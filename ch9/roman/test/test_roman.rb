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

    def test_substraction
        r = Roman.new
        assert_equal('XLIX', r.to_roman(49))
        assert_equal('XXXIX', r.to_roman(39))
        assert_equal('IV', r.to_roman(4))
        assert_equal('IX', r.to_roman(9))
        assert_equal('XCIX', r.to_roman(99))
        assert_equal('CM', r.to_roman(900))
        assert_equal('XC', r.to_roman(90))
        assert_equal('CDXC', r.to_roman(490))
        assert_equal('CMXCIX', r.to_roman(999))       
    end

    def test_doubles
        r = Roman.new
        assert_equal('II', r.to_roman(2))
        assert_equal('XX', r.to_roman(20))
        assert_equal('CC', r.to_roman(200))
        assert_equal('MM', r.to_roman(2000))
    end

    def test_triples
        r = Roman.new
        assert_equal('III', r.to_roman(3))
        assert_equal('XXX', r.to_roman(30))
        assert_equal('CCC', r.to_roman(300))
        assert_equal('MMM', r.to_roman(3000))
    end

    def test_others
        r = Roman.new
        assert_equal('DCCCLXXXVIII', r.to_roman(888))
        assert_equal('MDCLXVI', r.to_roman(1666))
        assert_equal('MIV', r.to_roman(1004))
        assert_equal('MMMCMXCVIII', r.to_roman(3998))
    end

end
