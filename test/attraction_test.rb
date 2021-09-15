require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/attraction'

class AttractionTest < MiniTest::Test
    def setup
        @attraction = Attraction.new
    end

    def test_it_works
        assert_equal true, @attraction.lovefunc(1,4)
        assert_equal false, @attraction.lovefunc(2,2)
        assert_equal true, @attraction.lovefunc(0,1)
        assert_equal false, @attraction.lovefunc(0,0)
        assert_equal false, @attraction.lovefunc(5,5)
    end
end