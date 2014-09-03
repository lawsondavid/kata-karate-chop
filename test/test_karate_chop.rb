require 'test/unit'
require './lib/karate_chop'

class TestKarateChop < Test::Unit::TestCase
  
  def test_karate_chop
    karate = KarateChop.new
	assert_equal(-1,  karate.chop(3, []))
	assert_equal(-1,  karate.chop(3, [1]))
	assert_equal(0,   karate.chop(1, [1]))
    #
    assert_equal(0,  karate.chop(1, [1, 3, 5]))
    assert_equal(1,  karate.chop(3, [1, 3, 5]))
    assert_equal(2,  karate.chop(5, [1, 3, 5]))
    assert_equal(-1, karate.chop(0, [1, 3, 5]))
    assert_equal(-1, karate.chop(2, [1, 3, 5]))
    assert_equal(-1, karate.chop(4, [1, 3, 5]))
    assert_equal(-1, karate.chop(6, [1, 3, 5]))
    # #
    assert_equal(0,  karate.chop(1, [1, 3, 5, 7]))
    assert_equal(1,  karate.chop(3, [1, 3, 5, 7]))
    assert_equal(2,  karate.chop(5, [1, 3, 5, 7]))
    assert_equal(3,  karate.chop(7, [1, 3, 5, 7]))
    assert_equal(-1, karate.chop(0, [1, 3, 5, 7]))
    assert_equal(-1, karate.chop(2, [1, 3, 5, 7]))
    assert_equal(-1, karate.chop(4, [1, 3, 5, 7]))
    assert_equal(-1, karate.chop(6, [1, 3, 5, 7]))
    assert_equal(-1, karate.chop(8, [1, 3, 5, 7]))
	
	assert_equal(0, karate.chop(1, [1, 3, 5, 7, 9]))
	assert_equal(1, karate.chop(3, [1, 3, 5, 7, 9]))
	assert_equal(2, karate.chop(5, [1, 3, 5, 7, 9]))
	assert_equal(3, karate.chop(7, [1, 3, 5, 7, 9]))
	assert_equal(4, karate.chop(9, [1, 3, 5, 7, 9]))
	assert_equal(-1, karate.chop(4, [1, 3, 5, 7, 9]))
	assert_equal(-1, karate.chop(10, [1, 3, 5, 7, 9]))
  end
end
