class NotesController < ApplicationController
  def index
    @notes = Note.page(params[:page])

    render("notes/index.html.erb")
  end

  def show
    @note = Note.find(params[:id])

    render("notes/show.html.erb")
  end

  def new
    @note = Note.new

    render("notes/new.html.erb")
  end

  def create
    @note = Note.new

    @note.body = params[:body]
    @note.location = params[:location]
    @note.device = params[:device]
    @note.dtg = params[:dtg]

    save_status = @note.save

    if save_status == true
      redirect_to("/notes/#{@note.id}", :notice => "Note created successfully.")
    else
      render("notes/new.html.erb")
    end
  end

  def edit
    @note = Note.find(params[:id])

    render("notes/edit.html.erb")
  end

  def update
    @note = Note.find(params[:id])

    @note.body = params[:body]
    @note.location = params[:location]
    @note.device = params[:device]
    @note.dtg = params[:dtg]

    save_status = @note.save

    if save_status == true
      redirect_to("/notes/#{@note.id}", :notice => "Note updated successfully.")
    else
      render("notes/edit.html.erb")
    end
  end

  def destroy
    @note = Note.find(params[:id])

    @note.destroy

    if URI(request.referer).path == "/notes/#{@note.id}"
      redirect_to("/", :notice => "Note deleted.")
    else
      redirect_to(:back, :notice => "Note deleted.")
    end
  end
end
