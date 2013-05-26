class Job < ActiveRecord::Base
  attr_accessible :comment, :enddate, :provider, :specialization, :startdate
end
