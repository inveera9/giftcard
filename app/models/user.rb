class User < ActiveRecord::Base
  #attr_accessor :current_password

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

     after_create :task 
    def task
    	self.add_role :registered
    end
end
