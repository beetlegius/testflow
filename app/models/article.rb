class Article < ApplicationRecord
  belongs_to :product

  validates :code, presence: true, uniqueness: true
  validates :size, :color, presence: true
end
