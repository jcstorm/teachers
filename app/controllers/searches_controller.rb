class SearchesController < ApplicationController
  
  def show
    if params[:search]
      name_matches = Teacher.where("name LIKE '%#{params[:search]}%'")
      email_matches = Teacher.where("email LIKE '%#{params[:search]}%'")
      department_matches = Teacher.where("department LIKE '%#{params[:search]}%'")
      location_matches = Teacher.where("location LIKE '%#{params[:search]}%'")

      course_matches = Course.where("name LIKE '%#{params[:search]}%'")

      club_matches = Club.where("name LIKE '%#{params[:search]}%'")

    
    @teachers = (name_matches+email_matches+department_matches+location_matches).uniq
    @courses = (course_matches+club_matches).uniq
  end
 end
end
