# Implement your procedural solution here!
def isPalindrome(input)
    input.to_s == input.to_s.reverse
end

def largest_palindrome_product
    max = 0

    (100..999).each do |num1|
        (100..999).each do |num2|
            product = num1 * num2
            if isPalindrome(product) && product > max
                max = product
            end
        end
    end
    max
end