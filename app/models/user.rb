class User < ActiveRecord::Base

  rolify
  # acts_as_orderer
  has_one :user_detail
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  after_create :task 

  def task
  	self.add_role :guest
  end
  acts_as_orderer

end
