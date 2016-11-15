class MetadataController < ApplicationController
  def index
    @metadata = Metadatum.page(params[:page])

    render("metadata/index.html.erb")
  end

  def show
    @metadatum = Metadatum.find(params[:id])

    render("metadata/show.html.erb")
  end

  def new
    @metadatum = Metadatum.new

    render("metadata/new.html.erb")
  end

  def create
    @metadatum = Metadatum.new


    save_status = @metadatum.save

    if save_status == true
      redirect_to("/metadata/#{@metadatum.id}", :notice => "Metadatum created successfully.")
    else
      render("metadata/new.html.erb")
    end
  end

  def edit
    @metadatum = Metadatum.find(params[:id])

    render("metadata/edit.html.erb")
  end

  def update
    @metadatum = Metadatum.find(params[:id])


    save_status = @metadatum.save

    if save_status == true
      redirect_to("/metadata/#{@metadatum.id}", :notice => "Metadatum updated successfully.")
    else
      render("metadata/edit.html.erb")
    end
  end

  def destroy
    @metadatum = Metadatum.find(params[:id])

    @metadatum.destroy

    if URI(request.referer).path == "/metadata/#{@metadatum.id}"
      redirect_to("/", :notice => "Metadatum deleted.")
    else
      redirect_to(:back, :notice => "Metadatum deleted.")
    end
  end
end
