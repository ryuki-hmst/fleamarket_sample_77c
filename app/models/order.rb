class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :item, presence: true
end
