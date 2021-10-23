class Event < ApplicationRecord

  with_options presence: true do
    validates :title, length:{maximum: 10}
    validates :text
  end
  
end
