class ProblemsController < ApplicationController
  unloadable

  before_filter :find_project, :authorize, :only => [:index]
  
  def index
  	@problems = Problem.where(:project_id => @project)
  end


  private

  def find_project
    @project = Project.find(params[:project_id])
  end
end
