class ClubsController < ApplicationController

  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find_by(id: params[:id])
  end

  def new
  end

  def create
    @club = Club.new
    @club.name = params[:name]
    @club.teacher_id = params[:teacher_id]

    if @club.save
      redirect_to "/clubs/#{ @club.id }"
    else
      render 'new'
    end
  end

  def edit
    @club = Club.find_by(id: params[:id])
  end

  def update
    @club = Club.find_by(id: params[:id])
    @club.name = params[:name]
    @club.teacher_id = params[:teacher_id]

    if @club.save
      redirect_to "/clubs/#{ @club.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @club = Club.find_by(id: params[:id])
    @club.destroy


    redirect_to "/clubs"
  end
end
