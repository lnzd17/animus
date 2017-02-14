class NotesController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @project.notes

  end

  def new
  end

  def create
    @project = Project.find(params[:project_id])
     @project.notes.create(note_params.merge(user: current_user))
    redirect_to project_path(@project)
  end

  def show
    @project = Project.find(params[:project_id])
    @note = @project.notes.find(params[:id])
  end

  def edit
    @project = Project.find(params[:project_id])
    @note = @project.notes.find(params[:id])


  end

  def update
    @project = Project.find(params[:project_id])
    @note = @project.notes.find(params[:id])
    @note.update_attributes(note_params)
    redirect_to project_note_path(@project, @note)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @note = @project.notes.find(params[:id])
    @note.destroy
    redirect_to project_path(@project)

  end

  private

  def note_params
    params.require(:note).permit(:note_text)
  end


end
