# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    arr.sum
end

def max_2_sum arr
    a = arr.max(2){ |a, b| a<=>b }
    a = a.sum
end

def sum_to_n? arr, n
    
    if arr.length == 0
        return false
    elsif arr.length == 1
        return false
    end
    arr.each_with_index do |x, index|
        arr.drop(index).each_with_index do |y, index2|
            if (x + y) == n and index != index2 + index
                return true
            end
        end
    end
    return false
end

# Part 2

def hello(name)
    return "Hello, #{name}"
end

def starts_with_consonant? s
    # s = s.to_s.downcase
    return s[0,1].match?(/\A-?\d+\Z/)
end

def binary_multiple_of_4? s
    if s.is_a? String
        if s.delete('01') == ''
          puts 0 == (s.to_i(2))%4
        else
          return false
        end
      else
        return false
      end
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price
    def initialize (isbn, price)
        raise ArgumentError if price <= 0 || isbn.length <= 0
        @isbn, @price = isbn, price
    end
    def price_as_string
        changePriceToStr = "%.2f" % @price.to_s
        return "$#{changePriceToStr}"
    end
end

