class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def show
    @day = Day.find(params[:id])
    @act = Act.new
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.new
    @day.title = params[:title]
    @day.image_url = params[:image_url]
    @day.description = params[:description]
    @day.city = params[:city]
    @day.guide_id = params[:guide_id]

    if @day.save
      redirect_to "/days", :notice => "Day created successfully."
    else
      render 'new'
    end
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])

    @day.title = params[:title]
    @day.image_url = params[:image_url]
    @day.description = params[:description]
    @day.city = params[:city]
    @day.guide_id = params[:guide_id]

    if @day.save
      redirect_to "/days", :notice => "Day updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @day = Day.find(params[:id])

    @day.destroy

    redirect_to "/days", :notice => "Day deleted."
  end
end
