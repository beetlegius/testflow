class Product < ApplicationRecord
  include Destroyable
  
  belongs_to :category
  has_many :articles

  validates :name, presence: true
end
