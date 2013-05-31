class Emailvalidation < ActiveRecord::Base
  attr_accessible :key, :user_id
  belongs_to :user
  validates :user_id, :uniqueness => true
  validates :user_id, :key, :presence => true

end
