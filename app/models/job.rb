class Job < ActiveRecord::Base
  attr_accessible :comment, :enddate, :provider, :specialization, :startdate

  validates :provider, :startdate, :enddate, :specialization, :comment, presence: true
  validates_date :startdate, :after => Date.today
  validates_date :enddate, :after => this.startdate - 1.day

end
