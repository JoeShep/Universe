class FixContactSpellingVisits < ActiveRecord::Migration
  def change
      rename_column(:visits, :contat_email, :contact_email)
  end
end
