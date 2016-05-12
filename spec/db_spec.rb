require 'omdbcli'

describe Omdbcli do
  describe 'search' do
    context 'has results' do
      r = Omdbcli.db_search 'star wars'
      value = r.class
      expect = Array
      it 'returns array' do
        expect(value).to eql(expect)
      end
    end

    context 'has 1 result' do
      r = Omdbcli.db_search 'star wa'
      value = r.class
      expect = Hash
      it 'returns a hash' do
        expect(value).to eql(expect)
      end
    end

    context 'has no results' do
      value = Omdbcli.db_search 'star wadksjkfjslkfj'
      expect = 'Movie not found!'
      it 'returns an error' do
        expect(value).to eql(expect)
      end
    end
  end

  describe 'title' do
    context 'has a result' do
      r = Omdbcli.db_title 'star wars'
      value = r.class
      expect = Hash
      it 'returns a hash' do
        expect(value).to eql(expect)
      end
    end

    context 'has no results' do
      value = Omdbcli.db_title 'star wadksjkfjslkfj'
      expect = 'Movie not found!'
      it 'returns an error' do
        expect(value).to eql(expect)
      end
    end
  end

  describe 'content' do
    context 'searching a movie' do
      r = Omdbcli.db_title 'inception'
      it 'has an id' do
        value = r[:imdb_id]
        expect = 'tt1375666'
        expect(value).to eql(expect)
      end

      it 'has tomatoes ratings' do
        v = r[:tomato_meter]
        e = "86"
        expect(v).to eql(e)
      end
    end
  end
end
