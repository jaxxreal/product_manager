class Product < ApplicationRecord
    has_many :Properties
    has_many :ProductProperties

    validates :name, presence: true, uniqueness: true,
                    length: { minimum: 0, maximum: 1024 }

    validates :upc, presence: true, uniqueness: true, numericality: { only_integer: true }, upc: true

    validates :available_on, presence: true, available_on: true
end
