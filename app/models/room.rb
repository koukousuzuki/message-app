class Room < ApplicationRecord
  
  has_many :messages
  has_many :entry
end
