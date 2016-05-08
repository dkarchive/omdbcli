module Omdbcli
  class << self
    require 'omdbapi'

    def db_process_response(hash)
      if hash[:response]=='False'
        hash[:error]
      else
        hash
      end

    end

    def db_search(name)
      r = OMDB.search name
      if r.class != Array
        db_process_response r
      else
        r
      end
    end

    def db_title(title)
      r = OMDB.title title, tomatoes: true 
      db_process_response r
    end
  end
end
