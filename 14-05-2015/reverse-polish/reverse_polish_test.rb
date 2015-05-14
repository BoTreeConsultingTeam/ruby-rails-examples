require 'minitest/autorun'
require_relative 'reverse_polish'

class ReversePolishTest < Minitest::Test
  def test_empty_polish
    assert_equal ReversePolish.evaluate(''), 0
  end

  def test_single_expression_polish_1
    assert_equal ReversePolish.evaluate('2 3 +'), 5
  end

  def test_single_expression_polish_2
    skip
    assert_equal ReversePolish.evaluate('5 3 *'), 15
  end

  def test_single_expression_polish_3
    skip
    assert_equal ReversePolish.evaluate('2 8 -'), -6
  end

  def test_single_expression_polish_4
    skip
    assert_equal ReversePolish.evaluate('18 2 /'), 9
  end

  def test_double_expression_polish_1
    skip
    assert_equal ReversePolish.evaluate('2 3 + 5 *'), 25
  end

  def test_double_expression_polish_2
    skip
    assert_equal ReversePolish.evaluate('9 10 * 5 /'), 18
  end

  def test_complex_polish_1
    skip
    assert_equal ReversePolish.evaluate('8 4 2 / 9 + *'), 88
  end

  def test_complex_polish_2
    skip
    assert_equal ReversePolish.evaluate('9 5 6 + 2 - * 3 / 15 *'), 405
  end
end