class Superhero < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :score, presence: true
end
