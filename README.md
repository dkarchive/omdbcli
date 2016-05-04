# omdbcli

Simple [OMDb](http://omdbapi.com/) CLI using `omdbapi`.

## Installation

```shell
$ git clone https://github.com/dkhamsing/omdbcli.git
$ cd omdbcli/
$ rake install
```

## Usage

```shell
$ omdb 'true grit'
omdb 0.2.1
Looking up true grit...
{:title=>"True Grit",
 :year=>"2010",
 :rated=>"PG-13",
 :released=>"22 Dec 2010",
 :runtime=>"110 min",
 :genre=>"Adventure, Drama, Western",
 :director=>"Ethan Coen, Joel Coen",
 :writer=>
  "Joel Coen (screenplay), Ethan Coen (screenplay), Charles Portis (novel)",
 :actors=>"Jeff Bridges, Hailee Steinfeld, Matt Damon, Josh Brolin",
 :plot=>
  "A tough U.S. Marshal helps a stubborn teenager track down her father's murderer.",
 :language=>"English",
 :country=>"USA",
 :awards=>"Nominated for 10 Oscars. Another 37 wins & 148 nominations.",
 :poster=>
  "http://ia.media-imdb.com/images/M/MV5BMjIxNjAzODQ0N15BMl5BanBnXkFtZTcwODY2MjMyNA@@._V1_SX300.jpg",
 :metascore=>"80",
 :imdb_rating=>"7.7",
 :imdb_votes=>"235,888",
 :imdb_id=>"tt1403865",
 :type=>"movie",
 :response=>"True"}
```

## Contact

- [github.com/dkhamsing](https://github.com/dkhamsing)
- [twitter.com/dkhamsing](https://twitter.com/dkhamsing)

## License

This project is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
