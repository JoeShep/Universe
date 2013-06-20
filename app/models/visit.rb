class Visit < ActiveRecord::Base
  attr_accessible :school_name, :visit_date
  validates_presence_of :user, :school_name
  validates_uniqueness_of :school_name, scope: :user_id, message: "must be unique"
  validates_associated :ranking

  has_one :ranking, :dependent => :destroy
  belongs_to :user

  # def formatted_date
  #   self.visit_date.strftime("%m/%d/%y") if !self.visit_date.nil?
  # end
end
