class Fruit < ActiveRecord::Base
  has_and_belongs_to_many :smoothies
  validates :name, uniqueness: true
end
