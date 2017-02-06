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

  def edit
    @project = Project.find(params[:id])

  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(project_params)
    redirect_to project_path(@project)

  end

  def destroy
    @project = Project.find(params[:id])
    @project.notes.destroy_all
    @project.destroy
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :note, :label, :priority)
  end
end
