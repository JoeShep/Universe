class AddColumnsToRankings < ActiveRecord::Migration
  def up
    change_table :rankings do |t|
      t.float :dorms
      t.float :campus
      t.float :food_campus
      t.float :food_off_campus
      t.float :majors
      t.float :town
      t.float :library
      t.float :students
      t.float :classrooms
      t.float :student_center
      t.float :intramural_sports
      t.float :other_activities
    end
  end

  def down
    remove_column(:rankings, :dorms)
    remove_column(:rankings, :campus)
    remove_column(:rankings, :food_campus)
    remove_column(:rankings, :food_off_campus)
    remove_column(:rankings, :majors)
    remove_column(:rankings, :town)
    remove_column(:rankings, :library)
    remove_column(:rankings, :students)
    remove_column(:rankings, :classrooms)
    remove_column(:rankings, :student_center)
    remove_column(:rankings, :intramural_sports)
    remove_column(:rankings, :other_activities)
  end
end