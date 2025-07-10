=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

module Acronym
        def self.abbreviate(phrase)
                words = phrase.split(/[ -]+/)
                result = ''
                for word in words
                        result += word[0].upcase
                end
                return result
        end
end
