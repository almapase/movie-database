class Studio < ActiveRecord::Base
  has_many :movies
  has_many :genres, through: :movies
  has_many :votes, through: :movies

  def self.votes_by_studio
    Studio.joins(:votes).group("studios.name").order("count(votes.vote) DESC").pluck("studios.name, count(votes.vote)")
  end

  def self.good_votes_by_studio
    Studio.joins(:votes).where("votes.vote = 'good'").group("studios.name").order("count(votes.vote) DESC").pluck("studios.name, count(votes.vote)")
  end

end
