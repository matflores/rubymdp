module Hamming
  def self.distance(s1, s2)
    raise ArgumentError, "Strings must be of the same length" unless s1.length == s2.length

    s1.chars.zip(s2.chars).select { |c1, c2| c1 != c2 }.count
  end
end
