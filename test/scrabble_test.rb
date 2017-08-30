gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    skip
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_play_empty_string_for_0_points
    assert_equal 0, Scrabble.new.score('')
  end

  def test_it_can_pass_or_play_nil
  end

  def test_it_can_score_a_word_with_multipliers
  end

  def test_7_letter_word_adds_10_points
  end




end
