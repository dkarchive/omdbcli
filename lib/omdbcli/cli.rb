module Omdbcli
  require 'omdbcli/db'
  require 'omdbcli/version'

  require 'pp'

  class << self
    OPTION_SEARCH = 'search'
    OPTION_TITLE = 'title'

    def cli
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

      ot, os = cli_options

      if ARGV.include? ot
        i = ARGV.index ot
        title = ARGV[i+1]
        cli_title title
        exit
      end

      if ARGV.include? os
        i = ARGV.index os
        name = ARGV[i+1]
        puts "Searching for #{name}..."
        pp db_search name
        exit
      end
    end

    def cli_options()
      [
        cli_make_option(OPTION_TITLE),
        cli_make_option(OPTION_SEARCH)
      ]
    end

    def cli_title(t)
      puts "Looking up #{t}..."
      pp db_title t
    end

    def cli_usage
      puts "Usage: #{COMMAND} <title> \n"\
           "       #{COMMAND} #{cli_make_option OPTION_TITLE} <title> \n"\
           "       #{COMMAND} #{cli_make_option OPTION_SEARCH} <name>"
    end

    def cli_make_option(name)
      "--#{name}"
    end
  end
end
