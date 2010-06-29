class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :username
  
  validates :username, :presence => true, :length => {:minimum => 4},
    :uniqueness => {:case_sensitive => false}, :format => { :with => /[A-Za-z0-9]+/ }
  
  # it's one nice handy shortcut for displaying username
  def to_s
    username
  end
  
end
