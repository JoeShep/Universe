class ChangeVisitDateToStringVisits < ActiveRecord::Migration
  def change
      change_column(:visits, :visit_date, :string)
  end
end
