require "protest"
require_relative "../hamming"

Protest.describe "Hamming distance" do
  test "returns 0 for identical strings" do
    assert_equal 0, Hamming.distance("CATCGTAATGACGGCCT", "CATCGTAATGACGGCCT")
  end

  test "returns the number of differences for strings of the same length" do
    assert_equal 7, Hamming.distance("GAGCCTACTAACGGGAT", "CATCGTAATGACGGCCT")
    assert_equal 3, Hamming.distance("toned", "roses")
    assert_equal 2, Hamming.distance("1011101", "1001001")
    assert_equal 3, Hamming.distance("2173896", "2233796")
  end

  test "is undefined for strings of different length" do
    assert_raise { Hamming.distance("abc", "abcdef") }
  end
end
