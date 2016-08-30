# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Vote.destroy_all
Movie.destroy_all
Genre.destroy_all
Studio.destroy_all

movies = {
  'Johnson Trail' => {
    release_date: 'Wed, 21 Dec 2005',
    studio: 'Spyglass Entertainment',
    genre: 'Action',
    votes: [:bad, :good, :bad, :good, :bad, :bad, :good, :good, :bad, :bad, :bad, :bad]
  },
  'Gregorio Road' => {
    release_date: 'Wed, 28 Jun 2006',
    studio: 'Embassy Pictures',
    genre: 'Documental',
    votes: [:good, :good, :good, :good, :bad, :good, :bad, :good, :bad, :bad, :bad, :bad]
  },
  'Tremayne Way' => {
    release_date: 'Thu, 31 Aug 2006',
    studio: 'Four Star Television',
    genre: 'Musical',
    votes: [:good, :bad, :bad, :good, :good, :good, :good, :good, :good, :bad, :good, :bad, :good, :bad, :good, :bad]
  },
  'Nicolas Parkway' => {
    release_date: 'Mon, 22 Sep 1997',
    studio: 'Five & Two Pictures',
    genre: 'Drama',
    votes: [:good, :good, :bad, :bad, :good, :good, :bad, :good, :bad, :bad, :bad, :good]
  },
  'Alfonzo Circles' => {
    release_date: 'Sun, 26 Feb 2012',
    studio: 'Walt Disney Pictures',
    genre: 'Drama',
    votes: [:bad, :bad, :good, :bad, :bad, :good, :good, :good, :bad, :bad, :good, :good, :good, :bad, :good, :bad, :good, :bad, :good, :bad]
  },
  'Windler Turnpike' => {
    release_date: 'Wed, 04 Dec 2002',
    studio: 'Metro Goldwyn Mayer',
    genre: 'Thriller',
    votes: [:good, :good, :good, :good, :good, :bad, :good, :good, :good, :good, :bad, :bad]
  },
  'Robel Ranch' => {
    release_date: 'Sat, 13 Oct 2012',
    studio: 'CBS Films',
    genre: 'Animated',
    votes: [:bad, :good, :good, :bad, :good, :bad, :good, :good, :good, :good, :good, :bad]
  },
  'Cummings Port' => {
    release_date: 'Thu, 10 Sep 1998',
    studio: 'Republic Pictures',
    genre: 'Action',
    votes: [:bad, :good, :good, :good, :bad, :good, :good, :good, :good, :bad, :bad, :good, :good, :bad, :good, :bad, :good, :bad, :good, :bad, :good, :bad, :good, :bad]
  },
  'Stuart Plain' => {
    release_date: 'Wed, 30 Nov 2005',
    studio: 'Fox Searchlight Pictures',
    genre: 'Action',
    votes: [:good, :good, :good, :bad, :good, :good, :bad, :good, :bad, :good, :bad, :bad]
  },
  'Augustus Terrace' => {
    release_date: 'Mon, 01 Feb 1999',
    studio: 'Universal Studios',
    genre: 'Comedy',
    votes: [:good, :bad, :bad, :good, :good, :bad, :good, :bad, :bad, :bad, :good, :bad]
  },
  'Lenora Inlet' => {
    release_date: 'Thu, 17 Mar 2011',
    studio: 'CBS Films',
    genre: 'Action',
    votes: [:bad, :bad, :good, :bad, :bad, :good, :good, :bad, :bad, :bad, :good, :bad]
  },
  'Goldner Shores' => {
    release_date: 'Wed, 29 Apr 2009',
    studio: 'Embassy Pictures',
    genre: 'Adventure',
    votes: [:good, :bad, :bad, :bad, :good, :bad, :bad, :bad, :good, :good, :bad, :good]
  },
  'Willard Parkways' => {
    release_date: 'Sat, 01 Nov 2008',
    studio: 'Square Pictures',
    genre: 'Action',
    votes: [:good, :bad, :bad, :good, :good, :good, :bad, :good, :good, :good, :bad, :good]
  },
  'Marilie Branch' => {
    release_date: 'Sun, 05 Feb 2006',
    studio: 'Cinemation Industries',
    genre: 'Thriller',
    votes: [:good, :good, :good, :bad, :bad, :good, :good, :bad, :bad, :bad, :bad, :good, :good, :bad, :good, :bad, :good, :bad, :good, :bad, :good, :bad, :good, :bad]
  },
  'Cordell Burgs' => {
    release_date: 'Fri, 10 Oct 2003',
    studio: 'Sony Pictures Classics',
    genre: 'Adventure',
    votes: [:bad, :good, :good, :good, :good, :good, :bad, :bad, :good, :bad, :bad, :good]
  },
  'Reinger Dam' => {
    release_date: 'Fri, 12 Oct 2012',
    studio: 'Cinemation Industries',
    genre: 'Animated',
    votes: [:good, :good, :bad, :bad, :good, :good, :good, :bad, :good, :bad, :bad, :bad]
  },
  'Cummerata Loop' => {
    release_date: 'Fri, 27 Dec 2002',
    studio: 'Imagine Entertainment',
    genre: 'Action',
    votes: [:good, :bad, :good, :bad, :bad, :good, :good, :good, :good, :good, :good, :bad, :good, :bad, :good, :bad, :good, :bad, :good, :bad, :good, :bad, :good, :bad, :good, :bad, :good, :bad]
  },
  'Raoul Lakes' => {
    release_date: 'Fri, 18 Jul 1997',
    studio: 'Hallmark Productions',
    genre: 'Adventure',
    votes: [:good, :good, :good, :good, :good, :good, :good, :bad, :bad, :good, :bad, :good]
  },
  'Rosenbaum Point' => {
    release_date: 'Fri, 12 Dec 1997',
    studio: 'Imagine Entertainment',
    genre: 'Musical',
    votes: [:good, :bad, :bad, :good, :bad, :good, :bad, :bad, :good, :bad, :bad, :good, :good, :bad, :good, :bad, :good, :bad, :good, :bad]
  },
  'Beverly Club' => {
    release_date: 'Thu, 06 Nov 2014',
    studio: 'Imagine Entertainment',
    genre: 'Action',
    votes: [:bad, :good, :bad, :good, :good, :bad, :good, :good, :bad, :good, :good, :good]
  },
  'Johnson Road' => {
    release_date: 'Sat, 27 Sep 2014',
    studio: 'Marvel Studios',
    genre: 'Thriller',
    votes: [:good, :good, :bad, :bad, :good, :bad, :good, :bad, :bad, :good, :good, :good]
  },
  'Diana Street' => {
    release_date: 'Wed, 08 Sep 1999',
    studio: 'Fox Searchlight Pictures',
    genre: 'Thriller',
    votes: [:bad, :bad, :good, :bad, :bad, :bad, :good, :good, :bad, :good, :good, :bad]
  },
  'Heller Stravenue' => {
    release_date: 'Wed, 22 Jan 2003',
    studio: 'Fox Searchlight Pictures',
    genre: 'Comedy',
    votes: [:bad, :good, :good, :good, :bad, :good, :bad, :bad, :good, :good, :bad, :bad]
  },
  'Bertha Club' => {
    release_date: 'Sun, 03 Dec 2006',
    studio: 'Electric Entertainment',
    genre: 'ScyFy',
    votes: [:good, :bad, :bad, :bad, :good, :good, :good, :good, :good, :bad, :good, :good]
  },
  'White Mews' => {
    release_date: 'Sun, 18 Sep 2011',
    studio: 'Pixar',
    genre: 'Animated',
    votes: [:good, :bad, :good, :good, :good, :good, :bad, :bad, :bad, :good, :bad, :good]
  },
  'Earnestine Forges' => {
    release_date: 'Wed, 24 Apr 1996',
    studio: 'Disneynature',
    genre: 'Adventure',
    votes: [:bad, :good, :good, :bad, :bad, :bad, :good, :good, :bad, :bad, :good, :bad]
  },
  'Elfrieda Shoal' => {
    release_date: 'Tue, 05 Nov 1996',
    studio: 'Republic Pictures',
    genre: 'Drama',
    votes: [:good, :good, :good, :good, :bad, :good, :good, :bad, :bad, :bad, :bad, :bad]
  },
  'Britney Valleys' => {
    release_date: 'Fri, 12 Feb 1999',
    studio: 'Columbia Pictures Industries, Inc.',
    genre: 'Thriller',
    votes: [:bad, :bad, :good, :bad, :good, :bad, :bad, :bad, :bad, :good, :bad, :bad]
  },
  'Rhoda River' => {
    release_date: 'Sun, 18 Jul 2004',
    studio: 'Legendary Pictures',
    genre: 'Animated',
    votes: [:bad, :bad, :bad, :bad, :bad, :good, :bad, :bad, :bad, :good, :good, :good]
  },
  'Cruickshank Forge' => {
    release_date: 'Sun, 06 May 2001',
    studio: 'Compass International Pictures',
    genre: 'ScyFy',
    votes: [:bad, :bad, :bad, :bad, :bad, :good, :good, :good, :good, :good, :bad, :good]
  },
  'Nicolas Way' => {
    release_date: 'Sun, 27 Feb 2005',
    studio: 'Orion Pictures',
    genre: 'Drama',
    votes: [:bad, :good, :bad, :good, :bad, :good, :bad, :bad, :good, :bad, :good, :good]
  },
  'McClure Lane' => {
    release_date: 'Sat, 03 Jul 2010',
    studio: 'Orion Pictures',
    genre: 'Thriller',
    votes: [:bad, :bad, :good, :good, :good, :bad, :bad, :good, :good, :bad, :bad, :good]
  },
  'Lucio Shore' => {
    release_date: 'Tue, 06 Feb 2007',
    studio: 'Hallmark Productions',
    genre: 'Animated',
    votes: [:good, :bad, :good, :good, :good, :good, :bad, :good, :bad, :good, :bad, :bad]
  },
  'Rippin Crossing' => {
    release_date: 'Sat, 21 May 2005',
    studio: 'Imagine Entertainment',
    genre: 'Documental',
    votes: [:bad, :good, :good, :bad, :good, :bad, :bad, :bad, :bad, :good, :good, :good]
  },
  'Effertz Parkway' => {
    release_date: 'Sat, 14 Feb 2004',
    studio: 'Electric Entertainment',
    genre: 'Drama',
    votes: [:good, :bad, :good, :bad, :good, :bad, :good, :good, :bad, :bad, :bad, :good]
  },
  'Darius Course' => {
    release_date: 'Thu, 28 Apr 2011',
    studio: 'Walt Disney Pictures',
    genre: 'Horror',
    votes: [:good, :good, :bad, :bad, :bad, :bad, :bad, :bad, :good, :bad, :good, :good]
  },
  'Natasha Divide' => {
    release_date: 'Thu, 05 Nov 2009',
    studio: 'Western Film Exchange',
    genre: 'Drama',
    votes: [:good, :bad, :bad, :bad, :good, :good, :good, :bad, :bad, :good, :good, :good]
  },
  'Batz Light' => {
    release_date: 'Fri, 23 May 2014',
    studio: 'Republic Pictures',
    genre: 'Adventure',
    votes: [:bad, :bad, :good, :bad, :good, :good, :bad, :bad, :bad, :bad, :bad, :good]
  },
  'Stroman Wall' => {
    release_date: 'Thu, 05 May 2005',
    studio: 'Twentieth Century-Fox',
    genre: 'Musical',
    votes: [:good, :bad, :good, :bad, :bad, :good, :bad, :bad, :bad, :bad, :bad, :good]
  },
  'Mraz Fords' => {
    release_date: 'Sun, 04 Feb 2007',
    studio: 'Square Pictures',
    genre: 'ScyFy',
    votes: [:good, :bad, :good, :bad, :bad, :bad, :bad, :bad, :good, :good, :good, :good]
  },
  'Ritchie Dam' => {
    release_date: 'Wed, 11 Dec 1996',
    studio: 'Touchstone Pictures',
    genre: 'Musical',
    votes: [:bad, :bad, :bad, :bad, :bad, :bad, :bad, :good, :bad, :good, :good, :good]
  },
  'Wiza Cliff' => {
    release_date: 'Sat, 24 Mar 2007',
    studio: 'Western Film Exchange',
    genre: 'Documental',
    votes: [:good, :bad, :good, :bad, :good, :good, :bad, :good, :good, :bad, :bad, :good]
  },
  'Erik Turnpike' => {
    release_date: 'Fri, 21 Nov 2014',
    studio: 'Republic Pictures',
    genre: 'Animated',
    votes: [:good, :bad, :good, :good, :bad, :bad, :good, :bad, :good, :bad, :bad, :good]
  },
  'Keefe Terrace' => {
    release_date: 'Wed, 15 Jan 2003',
    studio: 'Fox Film Corporation',
    genre: 'Adventure',
    votes: [:good, :bad, :bad, :good, :good, :bad, :good, :good, :bad, :good, :bad, :bad]
  },
  'Breitenberg Prairie' => {
    release_date: 'Thu, 07 Sep 2000',
    studio: 'Four Star Television',
    genre: 'Animated',
    votes: [:good, :bad, :good, :bad, :good, :bad, :good, :good, :good, :good, :good, :good]
  },
  'Carey Knoll' => {
    release_date: 'Tue, 04 Dec 2001',
    studio: 'New Line Cinema',
    genre: 'Adventure',
    votes: [:bad, :good, :bad, :good, :good, :good, :good, :bad, :bad, :bad, :bad, :bad]
  },
  'Alycia Underpass' => {
    release_date: 'Sat, 21 Apr 2007',
    studio: 'Orion Pictures',
    genre: 'Drama',
    votes: [:good, :good, :good, :bad, :bad, :bad, :bad, :bad, :good, :bad, :bad, :good]
  },
  'Corkery Club' => {
    release_date: 'Fri, 08 Oct 2004',
    studio: 'Original Film',
    genre: 'Musical',
    votes: [:good, :good, :good, :good, :bad, :bad, :good, :bad, :bad, :good, :bad, :good]
  },
  'Lehner Park' => {
    release_date: 'Sun, 02 May 1999',
    studio: 'New Line Cinema',
    genre: 'Action',
    votes: [:bad, :bad, :good, :good, :bad, :good, :good, :bad, :bad, :good, :good, :good]
  },
  'Consuelo Fields' => {
    release_date: 'Sun, 03 Jun 2012',
    studio: 'Paramount Pictures',
    genre: 'Comedy',
    votes: [:bad, :bad, :bad, :good, :bad, :bad, :good, :bad, :good, :bad, :good, :bad]
  }
}

require 'pp'

movies.each do |k,v|
  m = Movie.new(name: k)
  m.release_date = v[:release_date]
  m.genre = Genre.new(name: v[:genre])
  m.studio = Studio.new(name: v[:studio])
  v[:votes].each { |x| m.votes << Vote.new(vote: x) }
  m.save!
end
