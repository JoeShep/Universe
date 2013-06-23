class ChangeRankingColumnNameVisits < ActiveRecord::Migration
  def change
      rename_column(:visits, :ranking, :overall_ranking)
  end
end
