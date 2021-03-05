class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, :case_sensitive => false
  validates :name, presence: true
  validates :image_url, presence: true

  def ingredients_names
    result = []
    self.ingredients.each do |ingredient|
      result << ingredient.name
    end
    return result
  end
end
