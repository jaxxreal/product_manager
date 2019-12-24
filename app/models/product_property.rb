class ProductProperty < ApplicationRecord
  belongs_to :property
  belongs_to :product

  validates :value, length: { minimum: 0, maximum: 255 }
end
