class EventTemplate < ApplicationRecord
  validates :name, :youngest, :oldest, presence: true
end
