=begin
Write your code for the 'Reverse String' exercise in this file. Make the tests in
`reverse_string_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/reverse-string` directory.
=end
module Reverser
        def self.reverse(str)
                len = str.length
                reverse_str = ''
                # for i in (str.length-1).downto(0)
                #         reverse_str += str[i]
                # end
                for i in (0...str.length).to_a.reverse
                        reverse_str += str[i]
                end
                reverse_str
        end
end