class Comment < ApplicationRecord
  belongs_to :evens
  belongs_to :user
end
