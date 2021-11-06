class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :events, dependent: :destroy

  with_options presence: true do
    validates :name
    validates :email
    validates :encrypted_password
  end

end
