require 'minitest/autorun'
require_relative 'twelve_days'

class TwelveDaysTest < Minitest::Test
  # This test is an acceptance test.
  #
  # If you find it difficult to work the problem with so much
  # output, go ahead and add a `skip`, and write whatever
  # unit tests will help you. Then unskip it again
  # to make sure you got it right.
  # There's no need to submit the tests you write, unless you
  # specifically want feedback on them.
  def test_the_whole_song
    skip
    assert_equal song_lines, TwelveDays.song
  end

  def test_it_has_the_first_day
    line_assertions(0, "Partridge")
  end

  def test_it_has_the_second_day
    line_assertions(2, "Doves")
  end

  def test_it_has_the_third_day
    line_assertions(4, "Hens")
  end

  def test_it_has_the_fourth_day
    line_assertions(6, "Birds")
  end

  def test_it_has_the_fifth_day
    line_assertions(8, "Rings")
  end

  def test_it_has_the_sixth_day
    line_assertions(10, "Geese")
  end

  def test_it_has_the_seventh_day
    line_assertions(12, "Swans")
  end

  def test_it_has_the_eighth_day
    line_assertions(14, "Maids")
  end

  def test_it_has_the_ninth_day
    line_assertions(16, "Ladies")
  end

  private

  def line_assertions(line_number, includes_word)
    assertion_line = song_lines.lines[line_number]
    actual_line = TwelveDays.song.lines[line_number]

    assert assertion_line.include?(includes_word)
    assert actual_line.include?(includes_word)
    assert_equal assertion_line, actual_line
  end

  def song_lines
    song_file = File.expand_path('../song.txt', __FILE__)
    IO.read(song_file)
  end
end
