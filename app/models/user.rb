class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
         has_many :posts
         # usernames are unique
         validates_uniqueness_of :username
         # we must have a username to create an entry
         validates :username, :presence => true
         validates_format_of :email, with: /(\w+)(@uw.edu)|(\w+)(@u.washington.edu)/, on: :create
         
end
