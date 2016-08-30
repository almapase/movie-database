class DashboardsController < ApplicationController
  def index
    @movies = Movie.all
  end

  def simple
    @movies_by_year = Movie.movies_by_year
  end

  def doble
    @movies_by_genre = Genre.movies_by_genre
    @movie_most_five_vote = Movie.votes_by_movie.first(5)
    @good_votes_by_movie = Movie.good_votes_by_movie.first(5)
  end

  def triple
    @votes_by_studio = Studio.votes_by_studio.first(5)
    @good_votes_by_studio = Studio.good_votes_by_studio.first(5)
  end
end
