class Superhero < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, exclusion: { in: %w(fuck fucker shit damn horny bitch cunt ass gay anal balls blowjob clit cock dick dildo fag god homo jizz cum nigger nigga penis vagina pussy queer slut tit twat whore) }
    validates :name, format: { with: /\A[a-z[ ][*]['][-][(][)][!][?][,]]+\Z/i }
    validates :name, length: { maximum: 20 }
    validates :score, presence: true
end
