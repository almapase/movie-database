class Movie < ActiveRecord::Base
  belongs_to :studio
  belongs_to :genre
  has_many :votes

end
