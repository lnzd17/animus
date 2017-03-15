class ProjectsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def index
    @projects = Project.order(:priority).all
    @project= Project.new
  end

  def new
    @project = new
  end

  def create
    @project = current_user.projects.create(project_params)
    if @project.valid?
      redirect_to project_path(@project)
    else
       render :new, status: :unprocessable_entity
    end
  end


  def show
    @project = Project.find(params[:id])
    @priority_dif = 5 - @project.priority
    @note = Note.new
  end

  def edit
    @project = Project.find(params[:id])
    if @project.user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end

  end

  def update
    @project = Project.find(params[:id])
    if @project.user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end
    @project.update_attributes(project_params)
      if @project.valid?
        redirect_to project_path(@project)
      else
         render :edit, status: :unprocessable_entity
      end

  end

  def destroy
    @project = Project.find(params[:id])
    if @project.user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end
    @project.notes.destroy_all
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :note, :label, :priority, :summary, :complete)
  end
end
