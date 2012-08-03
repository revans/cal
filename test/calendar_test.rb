require_relative '../lib/calendar'
require 'minitest/autorun'
require 'minitest/pride'

class CalendarTest < MiniTest::Unit::TestCase
  def test_print_default_output
    expected = ["   ", "   ", "   ", "   ", "   ", "   ", "1  ", "new_line", "2  ", "3  ", "4  ", "5  ", "6  ", "7  ", "8  ", "new_line", "9  ", "10 ", "11 ", "12 ", "13 ", "14 ", "15 ", "new_line", "16 ", "17 ", "18 ", "19 ", "20 ", "21 ", "22 ", "new_line", "23 ", "24 ", "25 ", "26 ", "27 ", "28 ", "29 ", "new_line", "30"]
    assert_equal expected, Calendar.new(9, 2012).output
  end

  def test_pretty_print_output
    expected = 
"         1  2  3  4  
5  6  7  8  9  10 11 
12 13 14 15 16 17 18 
19 20 21 22 23 24 25 
26 27 28 29 30 31"
    assert_equal expected, Calendar.new(8, 2012).pretty_output
  end

end
