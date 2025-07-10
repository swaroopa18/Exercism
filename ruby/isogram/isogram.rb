=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

module Isogram
  def self.isogram?(phrase)
    hmap = {}
    phrase.each_char do |char|
      next unless char =~ /[a-z]/i
      c = char.downcase
      return false if hmap.key?(c)
      hmap[c] = true
    end
    true
  end
end