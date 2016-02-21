class DepartmentsController < ApplicationController

  def index
    @departments = Department.all
  end

  def show
    @department = Department.find_by(id: params[:id])
  end

  def new
  end

  def create
    @department = Department.new
    @department.name = params[:name]
    @department.teacher_id = params[:teacher_id]

    if @department.save
      redirect_to "/departments/#{ @department.id }"
    else
      render 'new'
    end
  end

  def edit
    @department = Department.find_by(id: params[:id])
  end

  def update
    @department = Department.find_by(id: params[:id])
    @department.name = params[:name]
    @department.teacher_id = params[:teacher_id]

    if @department.save
      redirect_to "/departments/#{ @department.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @department = Department.find_by(id: params[:id])
    @department.destroy


    redirect_to "/departments"
  end
end
