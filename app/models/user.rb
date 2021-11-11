class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :events, dependent: :destroy
  has_many :comments

  with_options presence: true do
    validates :name
    validates :email
    validates :password
  end

end
