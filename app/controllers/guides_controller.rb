class GuidesController < ApplicationController
  def index
    @guides = Guide.all
  end

  def show
    @guide = Guide.find(params[:id])
  end

  def new
    @guide = Guide.new
  end

  def create
    @guide = Guide.new
    @guide.name = params[:name]
    @guide.age = params[:age]
    @guide.bio = params[:bio]
    @guide.image_url = params[:image_url]

    if @guide.save
      redirect_to "/guides", :notice => "Guide created successfully."
    else
      render 'new'
    end
  end

  def edit
    @guide = Guide.find(params[:id])
  end

  def update
    @guide = Guide.find(params[:id])

    @guide.name = params[:name]
    @guide.age = params[:age]
    @guide.bio = params[:bio]
    @guide.image_url = params[:image_url]

    if @guide.save
      redirect_to "/guides", :notice => "Guide updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @guide = Guide.find(params[:id])

    @guide.destroy

    redirect_to "/guides", :notice => "Guide deleted."
  end
end
