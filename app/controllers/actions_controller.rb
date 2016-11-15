class ActionsController < ApplicationController
  def index
    @actions = Action.all

    render("actions/index.html.erb")
  end

  def show
    @action = Action.find(params[:id])

    render("actions/show.html.erb")
  end

  def new
    @action = Action.new

    render("actions/new.html.erb")
  end

  def create
    @action = Action.new


    save_status = @action.save

    if save_status == true
      redirect_to("/actions/#{@action.id}", :notice => "Action created successfully.")
    else
      render("actions/new.html.erb")
    end
  end

  def edit
    @action = Action.find(params[:id])

    render("actions/edit.html.erb")
  end

  def update
    @action = Action.find(params[:id])


    save_status = @action.save

    if save_status == true
      redirect_to("/actions/#{@action.id}", :notice => "Action updated successfully.")
    else
      render("actions/edit.html.erb")
    end
  end

  def destroy
    @action = Action.find(params[:id])

    @action.destroy

    if URI(request.referer).path == "/actions/#{@action.id}"
      redirect_to("/", :notice => "Action deleted.")
    else
      redirect_to(:back, :notice => "Action deleted.")
    end
  end
end
