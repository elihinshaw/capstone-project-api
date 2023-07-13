class Movie < ApplicationRecord
  has_many :favorites # :D
  has_many :users, through: :favorites

  # def is_favorited?(current_user)
  #   favorites.map do |favorite|
  #   end
  # end
end
