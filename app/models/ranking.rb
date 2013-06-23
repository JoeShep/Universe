class Ranking < ActiveRecord::Base
  belongs_to :visit
  attr_accessible :campus, :dorms, :food_campus, :food_off_campus, :majors, :town, :library, :students, :classrooms, :student_center, :intramural_sports, :other_activities
end
