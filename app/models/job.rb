class Job < ActiveRecord::Base
  attr_accessible :description, :enddate, :provider, :specialization, :startdate, :location

  validates :provider, :startdate, :enddate, :specialization, :description, :location, presence: true
  validates_date :startdate, :after => Date.today

  validate :enddate_must_not_be_before_startdate

  belongs_to :user

  def enddate_must_not_be_before_startdate
    if enddate && startdate 
      if enddate < startdate
        errors.add(:enddate, "must be before startdate")
      end
    end
  end

end
