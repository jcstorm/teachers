class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find_by(id: params[:id])
  end

  def new
  end

  def create
    @schedule = Schedule.new
    @schedule.p1 = params[:p1]
    @schedule.p2 = params[:p2]
    @schedule.p3 = params[:p3]
    @schedule.p4 = params[:p4]
    @schedule.p5 = params[:p5]
    @schedule.p6 = params[:p6]
    @schedule.p7 = params[:p7]
    @schedule.p8 = params[:p8]
    @schedule.p9 = params[:p9]
    @schedule.p10 = params[:p10]
    @schedule.teacher_id = params[:teacher_id]

    if @schedule.save
      redirect_to "/schedules/#{ @schedule.id }"
    else
      render 'new'
    end
  end

  def edit
    @schedule = Schedule.find_by(id: params[:id])
  end

  def update
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.p1 = params[:p1]
    @schedule.p2 = params[:p2]
    @schedule.p3 = params[:p3]
    @schedule.p4 = params[:p4]
    @schedule.p5 = params[:p5]
    @schedule.p6 = params[:p6]
    @schedule.p7 = params[:p7]
    @schedule.p8 = params[:p8]
    @schedule.p9 = params[:p9]
    @schedule.p10 = params[:p10]
    @schedule.teacher_id = params[:teacher_id]

    if @schedule.save
      redirect_to "/schedules/#{ @schedule.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.destroy


    redirect_to "/schedules"
  end
end
