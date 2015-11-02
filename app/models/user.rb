class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         # usernames are unique
         validates_uniqueness_of :username
         # we must have a username to create an entry
         validates :username, :presence => true
end
