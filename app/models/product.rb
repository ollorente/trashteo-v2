class Product < ApplicationRecord
  belongs_to :user
  belongs_to :unit
  belongs_to :material
end
