class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @notes = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def create
    my_note = Note.new
    my_note.text = params["text"] # these come from the name="" in the HTML form
    # my_note.wordcount = params["wordcount"]
    my_note.save
    redirect_to notes_path
  end

  def update
    @note = Note.find(params[:id])

    if @note.update(note_params)
      redirect_to @note
    else
      render 'edit'
    end
  end


  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to notes_path
end

  private
  def notes_params
    params.require(:notes).permit(:text,:wordcount)
  end
end
