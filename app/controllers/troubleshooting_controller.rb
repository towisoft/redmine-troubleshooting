class TroubleshootingController < ApplicationController
  unloadable
  before_filter :find_project, :authorize, :only => [:index, :respond]
  
  def index
    logger.info "Invoking troubleshooting controller"
    # get data from url
    problem = nil
    causes = []
    qas = get_answered_questions
    answers = []
    contradictions = []
    qas.each do |question, answer|
    	answers += Answer.where(:question_id => question, :result => answer)
    	contradictions += Answer.where(:question_id => question, :result => !answer)
    end
    logger.info "Available answers "+answers.join(",")
    logger.info "Available contradictions "+contradictions.join(",")
    questions = Question.where(:project_id => @project)
    # get all questions for project
    @questions = questions
    # filter questions by problem if it is specified
    if params.has_key?(:problem)
    	problem = Problem.find(params[:problem])
        causes = problem.causes
		questions = questions.select{|q| (causes - q.causes).length < causes.length}
	else
		causes = Cause.where(:project_id => @project)
    end
    # provide data to the view
    @problem = problem
    @answeredQuestions = qas.keys
    @questions = questions - @answeredQuestions
    # remove contradicted causes
    @causes = Array(causes)
    contradictions.each { |answ| @causes.delete(answ.cause) }
  end

  def respond
  	redirect_to :action => 'index'
  end


  private

  # method to get answers from the parameters
  def get_answered_questions
    answers = {}
    params.each do |key, val|
      if key.start_with? 'q_'
        answers[Question.find(key[2..-1])] = to_boolean(val)
      end
    end
    return answers
  end
  
  def to_boolean(str)
  	return str == 'yes'
  end
    
  def find_project
    @project = Project.find(params[:project_id])
  end
  
end
