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
# YOUR CODE HERE
end
