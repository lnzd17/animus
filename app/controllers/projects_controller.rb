class ProjectsController < ApplicationController
  def index
    @projects = Project.order(:priority).all
    @project= Project.new
  end

  def new
  end

  def create
    Project.create(project_params)
    @project = Project.last
    redirect_to project_path(@project)
  end


  def show
    @project = Project.find(params[:id])
    @note = Note.new
  end

  private

  def project_params
    params.require(:project).permit(:title, :note, :label, :priority)
  end
end
