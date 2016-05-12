# omdbcli

Simple [OMDb](http://omdbapi.com/) CLI using [`omdbapi`](https://github.com/caseyscarborough/omdbapi).

[![Build Status](https://travis-ci.org/dkhamsing/omdbcli.svg)](https://travis-ci.org/dkhamsing/omdbcli)

## Installation

```
$ git clone https://github.com/dkhamsing/omdbcli.git
$ cd omdbcli/
$ rake install
```

## Usage

```shell
omdb <title>
omdb --title <title>
omdb --search <name>
```

```shell
$ omdb 'true grit'
{
                  :title => "True Grit",
                   :year => "2010",
                  :rated => "PG-13",
               :released => "22 Dec 2010",
                :runtime => "110 min",
                  :genre => "Adventure, Drama, Western",
               :director => "Ethan Coen, Joel Coen",
                 :writer => "Joel Coen (screenplay), Ethan Coen (screenplay), Charles Portis (novel)",
                 :actors => "Jeff Bridges, Hailee Steinfeld, Matt Damon, Josh Brolin",
                   :plot => "A tough U.S. Marshal helps a stubborn teenager track down her father's murderer.",
               :language => "English",
                :country => "USA",
                 :awards => "Nominated for 10 Oscars. Another 37 wins & 148 nominations.",
                 :poster => "http://ia.media-imdb.com/images/M/MV5BMjIxNjAzODQ0N15BMl5BanBnXkFtZTcwODY2MjMyNA@@._V1_SX300.jpg",
              :metascore => "80",
            :imdb_rating => "7.7",
             :imdb_votes => "235,888",
                :imdb_id => "tt1403865",
                   :type => "movie",
           :tomato_meter => "96",
           :tomato_image => "certified",
          :tomato_rating => "8.4",
         :tomato_reviews => "262",
           :tomato_fresh => "252",
          :tomato_rotten => "10",
       :tomato_consensus => "Girded by strong performances from Jeff Bridges, Matt Damon, and newcomer Hailee Steinfeld, and lifted by some of the Coens' most finely tuned, unaffected work, True Grit is a worthy companion to the Charles Portis book.",
      :tomato_user_meter => "85",
     :tomato_user_rating => "4.0",
    :tomato_user_reviews => "155896",
             :tomato_url => "http://www.rottentomatoes.com/m/true-grit-2010/",
                    :dvd => "07 Jun 2011",
             :box_office => "$171.0M",
             :production => "Paramount Pictures",
                :website => "http://www.truegritmovie.com/",
               :response => "True"
}

```

```shell
$ omdb --search 'star wars'
Searching for star wars...
[
    [0] {
          :title => "Star Wars: Episode IV - A New Hope",
           :year => "1977",
        :imdb_id => "tt0076759",
           :type => "movie",
         :poster => "http://ia.media-imdb.com/images/M/MV5BOTIyMDY2NGQtOGJjNi00OTk4LWFhMDgtYmE3M2NiYzM0YTVmXkEyXkFqcGdeQXVyNTU1NTcwOTk@._V1_SX300.jpg"
    },
    [1] {
          :title => "Star Wars: Episode V - The Empire Strikes Back",
           :year => "1980",
        :imdb_id => "tt0080684",
           :type => "movie",
         :poster => "http://ia.media-imdb.com/images/M/MV5BMjE2MzQwMTgxN15BMl5BanBnXkFtZTcwMDQzNjk2OQ@@._V1_SX300.jpg"
    },
    # ...
]
```

## Credits

- [`omdbapi`](https://github.com/caseyscarborough/omdbapi)
- [`awesome_print`](https://github.com/michaeldv/awesome_print)

## Contact

- [github.com/dkhamsing](https://github.com/dkhamsing)
- [twitter.com/dkhamsing](https://twitter.com/dkhamsing)

## License

This project is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
