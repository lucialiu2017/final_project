class ActsController < ApplicationController
  def index
    @acts = Act.all

  end

  def show
    @act = Act.find(params[:id])
  end

  def new
    @act = Act.new
  end

  def create
    @act = Act.new
    @act.time = params[:time]
    @act.do = params[:do]
    @act.see = params[:see]
    @act.where = params[:where]
    @act.day_id = params[:day_id]

    if @act.save
      redirect_to "/days", :notice => "Act created successfully."
    else
      render 'new'
    end
  end

  def edit
    @act = Act.find(params[:id])
  end

  def update
    @act = Act.find(params[:id])

    @act.time = params[:time]
    @act.do = params[:do]
    @act.see = params[:see]
    @act.where = params[:where]
    @act.day_id = params[:day_id]

    if @act.save
      redirect_to "/days", :notice => "Act updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @act = Act.find(params[:id])

    @act.destroy

    redirect_to "/days", :notice => "Act deleted."
  end
end
