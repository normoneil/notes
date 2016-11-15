class DecisionsController < ApplicationController
  def index
    @decisions = Decision.page(params[:page])

    render("decisions/index.html.erb")
  end

  def show
    @decision = Decision.find(params[:id])

    render("decisions/show.html.erb")
  end

  def new
    @decision = Decision.new

    render("decisions/new.html.erb")
  end

  def create
    @decision = Decision.new


    save_status = @decision.save

    if save_status == true
      redirect_to("/decisions/#{@decision.id}", :notice => "Decision created successfully.")
    else
      render("decisions/new.html.erb")
    end
  end

  def edit
    @decision = Decision.find(params[:id])

    render("decisions/edit.html.erb")
  end

  def update
    @decision = Decision.find(params[:id])


    save_status = @decision.save

    if save_status == true
      redirect_to("/decisions/#{@decision.id}", :notice => "Decision updated successfully.")
    else
      render("decisions/edit.html.erb")
    end
  end

  def destroy
    @decision = Decision.find(params[:id])

    @decision.destroy

    if URI(request.referer).path == "/decisions/#{@decision.id}"
      redirect_to("/", :notice => "Decision deleted.")
    else
      redirect_to(:back, :notice => "Decision deleted.")
    end
  end
end
