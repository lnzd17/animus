class ProjectsController < ApplicationController
  def index
    @projects = Project.order(:priority).all
  end

  def new
    @project = Project.new
  end

  def create
    Project.create(project_params)
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :note, :label, :priority)
  end
end
