class Genre < ActiveRecord::Base
  has_many :movies
  has_many :studios, through: :movies

  def self.movies_by_genre
    Genre.joins(:movies).group("genres.name").pluck("genres.name, count(genres.name)")
  end
end
