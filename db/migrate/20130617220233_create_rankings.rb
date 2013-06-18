class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.references :visit

      t.timestamps
    end
    add_index :rankings, :visit_id
  end
end
