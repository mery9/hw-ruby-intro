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
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock

    attr_writer :isbn
    attr_writer :price
    def initialize (isbn, price)
        # raise ArgumentError if isbn = "" || isbn.kind_of?(String)
        # raise ArgumentError if price <= 0
        raise ArgumentError if price <= 0
        raise ArgumentError if isbn.length <= 0
        @isbn = isbn
        @price = price
    end

    def price
        @price
    end

    def isbn
        @isbn
    end

    def price_as_string
        changePriceToStr = "%.2f" % @price.to_s
        return "$#{changePriceToStr}"
    end

end

