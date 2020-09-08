class Ingredient < ApplicationRecord
    has_many :drink_ingredients, dependent: :destroy
end
