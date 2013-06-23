class DropColumnsInVisits < ActiveRecord::Migration
  def change
    remove_column(:visits, :in_session)
    remove_column(:visits, :tour)
    remove_column(:visits, :interview)
    remove_column(:visits, :info_session)
    remove_column(:visits, :overnight)
    remove_column(:visits, :class_visit)
  end
end