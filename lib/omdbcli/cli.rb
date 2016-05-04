module Omdbcli
  require 'omdbcli/version'

  class << self
    OPTION_SEARCH = 'search'
    OPTION_TITLE = 'title'

    def cli
      require 'pp'
      require 'omdbapi'

      puts "#{COMMAND} #{VERSION}"

      if ARGV.count == 0
        cli_usage
        exit
      end

      if ARGV.count == 1
        title = ARGV[0]
        cli_title title
        exit
      end

      ot = cli_make_option(OPTION_TITLE)
      if ARGV.include? ot
        i = ARGV.index ot
        title = ARGV[i+1]
        cli_title title
        exit
      end

      os = cli_make_option OPTION_SEARCH
      if ARGV.include? os
        i = ARGV.index os
        name = ARGV[i+1]
        cli_search name
        exit
      end

    end

    def cli_options
      return
      [
        cli_make_option(OPTION_TITLE),
        cli_make_option(OPTION_SEARCH)
      ]
    end

    def cli_usage
      puts "Usage: #{COMMAND} <title> \n"\
           "       #{COMMAND} #{cli_make_option OPTION_TITLE} <title> \n"\
           "       #{COMMAND} #{cli_make_option OPTION_SEARCH} <name>"
    end

    def cli_make_option(name)
      "--#{name}"
    end

    def cli_search(name)
      puts "Searching for #{name}..."
      r = OMDB.search name
      if r.class != Array
        puts 'No results'
      else
        pp r
      end
    end

    def cli_title(title)
      puts "Looking up #{title}..."
      t = OMDB.title title
      if t[:response]=='False'
        puts t[:error]
      else
        pp t
      end
    end
  end
end
