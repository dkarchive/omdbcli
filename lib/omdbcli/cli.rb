module Omdbcli
  require 'omdbcli/version'

  class << self
    def cli
      require 'pp'
      require 'omdbapi'

      puts "#{COMMAND} #{VERSION}"

      if ARGV.count == 0
        cli_usage
        exit
      end

      title = ARGV[0]
      puts "Looking up #{title}..."
      t = OMDB.title title
      if t[:response]=='False'
        puts t[:error]
      else
        pp t
      end
    end

    def cli_usage
      puts "Usage: #{COMMAND} <title>"
    end
  end
end
