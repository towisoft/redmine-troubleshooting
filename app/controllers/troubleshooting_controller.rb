class TroubleshootingController < ApplicationController
  unloadable

  before_filter :find_project, :authorize, :only => :index

  def index
  	@questions = Question.where(:project_id => @project)
  end

  def manage
  	@questions = Question.all
  end

  private

  def find_project
    # @project variable must be set before calling the authorize filter
    @project = Project.find(params[:project_id])
  end
  
end
