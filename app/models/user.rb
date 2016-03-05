class User < ActiveRecord::Base

	has_many :goals

  before_save do  
  	self.email = email.downcase
  end

  after_initialize :defaults

  def defaults
  	self.role ||= :standard #self.role = :standard if self.role.nil?
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable




  enum role: [:standard, :admin]

end
