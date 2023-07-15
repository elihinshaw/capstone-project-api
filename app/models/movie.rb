class Movie < ApplicationRecord
  has_many :favorites # :D
  has_many :users, through: :favorites
end
