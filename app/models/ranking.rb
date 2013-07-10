class Ranking < ActiveRecord::Base
  belongs_to :visit
  attr_accessible :campus, :dorms, :food_campus,
  :food_off_campus, :majors, :town, :library, :students,
  :classrooms, :student_center, :intramural_sports, :other_activities,
  :campus_note, :dorms_note, :food_campus_note, :food_off_campus_note, :majors_note,
  :town_note, :library_note, :students_note, :classrooms_note, :student_center_note,
  :intramural_sports_note, :other_activities_note
end
