class Movie < ActiveRecord::Base
  belongs_to :studio
  belongs_to :genre
  has_many :votes

  def self.movies_by_year
    Movie.group_by_year(:release_date).count
  end

  def self.votes_by_movie
    Movie.joins(:votes).group("movies.name").order("count(votes.vote) DESC").pluck("movies.name, count(votes.vote)")
  end

  def self.good_votes_by_movie
    Movie.joins(:votes).where("votes.vote = 'good'").group("movies.name").order("count(votes.vote) DESC").pluck("movies.name, count(votes.vote)")
  end

end
