class Superhero < ApplicationRecord
    validates :name, presence: true
    validates :score, presence: true
end
