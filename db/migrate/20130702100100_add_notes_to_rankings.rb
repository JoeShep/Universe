class AddNotesToRankings < ActiveRecord::Migration
  def up
    change_table :rankings do |t|
      t.text :dorms_note
      t.text :campus_note
      t.text :food_campus_note
      t.text :food_off_campus_note
      t.text :majors_note
      t.text :town_note
      t.text :library_note
      t.text :students_note
      t.text :classrooms_note
      t.text :student_center_note
      t.text :intramural_sports_note
      t.text :other_activities_note
    end
  end

  def down
    remove_column(:rankings, :dorms_note)
    remove_column(:rankings, :campus_note)
    remove_column(:rankings, :food_campus_note)
    remove_column(:rankings, :food_off_campus_note)
    remove_column(:rankings, :majors_note)
    remove_column(:rankings, :town_note)
    remove_column(:rankings, :library_note)
    remove_column(:rankings, :students_note)
    remove_column(:rankings, :classrooms_note)
    remove_column(:rankings, :student_center_note)
    remove_column(:rankings, :intramural_sports_note)
    remove_column(:rankings, :other_activities_note)
  end
end