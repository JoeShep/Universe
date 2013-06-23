class Visit < ActiveRecord::Base
  attr_accessible :school_name, :visit_date, :overall_ranking, :contact_name, :contact_email, :contact_phone, :in_session, :tour, :interview, :info_session, :overnight, :class_visit
  validates_presence_of :user, :school_name
  validates_uniqueness_of :school_name, scope: :user_id, message: "must be unique"
  validates_associated :ranking

  has_one :ranking, :dependent => :destroy
  belongs_to :user
end
