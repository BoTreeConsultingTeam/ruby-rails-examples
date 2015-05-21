require 'minitest/autorun'
require_relative 'combinations'

class CombinationsTest < Minitest::Test
  def test_100
    Combinations.find(100).each do |expr|
      assert_equal eval(expr), 100
    end
  end
end
