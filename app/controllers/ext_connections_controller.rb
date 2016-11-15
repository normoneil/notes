class ExtConnectionsController < ApplicationController
  def index
    @ext_connections = ExtConnection.all

    render("ext_connections/index.html.erb")
  end

  def show
    @ext_connection = ExtConnection.find(params[:id])

    render("ext_connections/show.html.erb")
  end

  def new
    @ext_connection = ExtConnection.new

    render("ext_connections/new.html.erb")
  end

  def create
    @ext_connection = ExtConnection.new


    save_status = @ext_connection.save

    if save_status == true
      redirect_to("/ext_connections/#{@ext_connection.id}", :notice => "Ext connection created successfully.")
    else
      render("ext_connections/new.html.erb")
    end
  end

  def edit
    @ext_connection = ExtConnection.find(params[:id])

    render("ext_connections/edit.html.erb")
  end

  def update
    @ext_connection = ExtConnection.find(params[:id])


    save_status = @ext_connection.save

    if save_status == true
      redirect_to("/ext_connections/#{@ext_connection.id}", :notice => "Ext connection updated successfully.")
    else
      render("ext_connections/edit.html.erb")
    end
  end

  def destroy
    @ext_connection = ExtConnection.find(params[:id])

    @ext_connection.destroy

    if URI(request.referer).path == "/ext_connections/#{@ext_connection.id}"
      redirect_to("/", :notice => "Ext connection deleted.")
    else
      redirect_to(:back, :notice => "Ext connection deleted.")
    end
  end
end
