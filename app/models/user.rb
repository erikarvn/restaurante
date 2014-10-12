class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :rols
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   scope :search, lambda { |search_word| where('users.email LIKE ?', "%#{search_word}%") }       
end
