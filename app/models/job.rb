class Job < ActiveRecord::Base
  attr_accessible :comment, :enddate, :provider, :specialization, :startdate
  validates :provider, :startdate, :enddate, :specialization, :comment, presence: true

end
