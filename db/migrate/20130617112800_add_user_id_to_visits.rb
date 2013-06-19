class AddUserIdToVisits < ActiveRecord::Migration
  def change
    change_table :visits do |t|
      t.integer :user_id
    end
  end
end
