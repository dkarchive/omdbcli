module Omdbcli
  require 'omdbcli/db'
  require 'omdbcli/version'

  class << self
    def cli
      require 'awesome_print'
      require 'optparse'

      puts "#{COMMAND} #{VERSION}"

      ARGV << '-h' if ARGV.empty?

      options = {}
      ARGV.options do |opts|
        opts.banner = "usage: #{COMMAND} [movie] \n"\
                      "       #{COMMAND} [options]"

        opts.on("-t", "--title [movie]", String)  { |val| options['title'] = val }
        opts.on("-s", "--search [movie]", String) { |val| options['search'] = val }
        opts.on_tail("-h", "--help") { puts opts }
        opts.parse!
      end

      t = options['title']
      t = ARGV[0] if t.nil?
      unless t.nil?
        puts "Looking up #{t}..."
        ap db_title(t), :color => { :string => :cyanish }
        exit
      end

      s = options['search']
      unless s.nil?
        puts "Searching for #{s}..."
        ap db_search(s)
      end
    end
  end
end
