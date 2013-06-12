class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :school_name
      t.date :visit_date
      t.float :ranking
      t.string :contact_name
      t.string :contat_email
      t.string :contact_phone
      t.string :in_session
      t.string :tour
      t.string :interview
      t.string :info_session
      t.string :overnight
      t.string :class_visit

      t.timestamps
    end
  end
end
