class Product < ApplicationRecord
  belongs_to :category
  has_many :articles

  validates :name, presence: true
end
