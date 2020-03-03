class Medal < ApplicationRecord
  validates_presence_of :medal
  belongs_to :olympian
  belongs_to :event
end
