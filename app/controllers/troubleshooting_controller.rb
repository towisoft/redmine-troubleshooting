class TroubleshootingController < ApplicationController
  unloadable

  before_filter :find_project, :authorize, :only => [:index, :respond]
  def index
  	@questions = Question.where(:project_id => @project)
  end

  def respond
  	redirect_to :action => 'index'
  end


  private

  def find_project
    @project = Project.find(params[:project_id])
  end
  
end
