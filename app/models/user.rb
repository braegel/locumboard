class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation

  validates_format_of :email, :with => /@/
  validates :email, :uniqueness => true
  validates_presence_of :password, :on => :create

  has_secure_password

  has_many :jobs, :foreign_key => "provider"

end
