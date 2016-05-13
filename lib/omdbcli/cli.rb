module Omdbcli
  require 'omdbcli/db'
  require 'omdbcli/version'

  class << self
    OPTION_SEARCH = 'search'
    OPTION_TITLE = 'title'

    def cli
      require 'optparse'

      puts "#{COMMAND} #{VERSION}"

      ARGV << '-h' if ARGV.empty?

      title  = nil
      search = nil

      ARGV.options do |opts|
        opts.on("-t", "--title=movie", String )  { |val| title = val }
        opts.on("-s", "--search=movie", String ) { |val| search = val }
        opts.on_tail("-h", "--help")           { puts opts }
        opts.parse!
      end

      if title.nil?
        title = ARGV[0]
      end

      unless title.nil?
        cli_title title
        exit
      end

      cp db_search(search) unless search.nil?
    end

    def cli_title(t)
      puts "Looking up #{t}..."
      cp db_title(t)
    end

    def cp(text)
      require 'awesome_print'

      ap text, :color => { :string => :cyanish }
    end
  end
end
