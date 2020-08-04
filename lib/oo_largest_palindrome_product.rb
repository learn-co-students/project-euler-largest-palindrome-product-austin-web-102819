# Implement your object-oriented solution here!
class LargestPalindromeProduct
    attr_accessor :answer

    def initialize
        (100..999).each do |num1|
            (100..999).each do |num2|
                product = num1 * num2
                if isPalindrome(product)
                    if @answer == nil || product > @answer
                        @answer = product
                    end
                end
            end
        end
    end

    def isPalindrome(input)
        input.to_s == input.to_s.reverse
    end
end