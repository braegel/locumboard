class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation

  validates_format_of :email, :with => /@/
  has_secure_password
  validates_presence_of :password, :on => :create

end
