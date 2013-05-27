class User < ActiveRecord::Base
  attr_accessible :email, :password_digest
  validates_format_of :email, :with => /@/


  class User < ActiveRecord::Base
    has_secure_password
    validates_presence_of :password, :on => :create
  end
end
