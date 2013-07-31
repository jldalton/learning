require 'minitest/unit'
require 'minitest/autorun'
require 'roman'

class TestRoman < MiniTest::Unit::TestCase

    def test_single_letters
        r = Roman.new
        assert_equal('I', r.to_roman(1))
        assert_equal('V', r.to_roman(5))
        assert_equal('X', r.to_roman(10))
        assert_equal('L', r.to_roman(50))
        assert_equal('C', r.to_roman(100))
        assert_equal('D', r.to_roman(500))
        assert_equal('M', r.to_roman(1000))
    end

end
