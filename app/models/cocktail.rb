class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews
  validates :name, uniqueness: true, :case_sensitive => false
  validates :name, presence: true
  validates :photo, presence: true
  has_one_attached :photo

  def ingredients_names
    result = []
    self.ingredients.each do |ingredient|
      result << ingredient.name
    end
    return result
  end
end
