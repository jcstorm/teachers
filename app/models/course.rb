class Course < ActiveRecord::Base
  has_many  :teachers
end
