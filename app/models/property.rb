class Property < ApplicationRecord
  belongs_to :product

  validates :name, uniqueness: true, length: { minimum: 0, maximum: 255 }
end
