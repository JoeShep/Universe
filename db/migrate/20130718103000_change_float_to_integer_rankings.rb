class ChangeFloatToIntegerRankings < ActiveRecord::Migration
  def change
      change_column(:rankings, :dorms, :integer)
      change_column(:rankings, :campus, :integer)
      change_column(:rankings, :food_campus, :integer)
      change_column(:rankings, :food_off_campus, :integer)
      change_column(:rankings, :majors, :integer)
      change_column(:rankings, :town, :integer)
      change_column(:rankings, :library, :integer)
      change_column(:rankings, :students, :integer)
      change_column(:rankings, :classrooms, :integer)
      change_column(:rankings, :student_center, :integer)
      change_column(:rankings, :intramural_sports, :integer)
      change_column(:rankings, :other_activities, :integer)
  end
end
