class Ranking < ActiveRecord::Base
  belongs_to :visit
  # attr_accessible :title, :body
end
