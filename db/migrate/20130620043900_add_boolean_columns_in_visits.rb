class AddBooleanColumnsInVisits < ActiveRecord::Migration
  def change
    change_table :visits do |t|
      t.boolean :in_session
      t.boolean :tour
      t.boolean :interview
      t.boolean :info_session
      t.boolean :overnight
      t.boolean :class_visit
    end
  end
end