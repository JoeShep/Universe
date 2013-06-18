class Visit < ActiveRecord::Base
  # attr_accessible :title, :body
  validates_presence_of :user, :school_name
  validates_uniqueness_of :name, scope: :user_id, message: "must be unique"
  validates_associated :ranking

  has_one :ranking, :dependent => :destroy
  belongs_to :user
end
