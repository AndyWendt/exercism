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
    assert_equal song_lines.lines.first, TwelveDays.song.lines.first
  end

  def test_it_has_the_second_day
    assert_equal song_lines.lines[2], TwelveDays.song.lines[2]
  end

  def test_it_has_the_third_day
    assert_equal song_lines.lines[4], TwelveDays.song.lines[4]
  end

  def test_it_has_the_fourth_day
    assert_equal song_lines.lines[6], TwelveDays.song.lines[6]
  end

  def test_it_has_the_fifth_day
    assert_equal song_lines.lines[8], TwelveDays.song.lines[8]
  end

  def test_it_has_the_sixth_day
    assert_equal song_lines.lines[10], TwelveDays.song.lines[10]
  end

  private

  def song_lines
    song_file = File.expand_path('../song.txt', __FILE__)
    IO.read(song_file)
  end
end
