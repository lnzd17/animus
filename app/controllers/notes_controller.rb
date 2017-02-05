class NotesController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @project.notes

  end

  def create
    @project = Project.find(params[:project_id])
    @project.notes.create(note_params)
    redirect_to project_path(@project)
  end

  def show
    @project = Project.find(params[:project_id])
  end

  def edit
  end

  def update
  end

  private

  def note_params
    params.require(:note).permit(:note_text)
  end


end
