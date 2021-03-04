class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, presence: true
  default_scope { order(name: :asc) }
end
