require 'pry'

def my_find(collection)
    if collection == []
        nil
    end
    
    i  = 0
    while i < collection.length
        if yield(collection[i])
            return collection[i]
        end
        i += 1
    end
    nil
end

#What's going on here
#
#The find method iterates through an array and returns the first element that passes a test in the form of a block
#Ex. [1,2,3,4].find {|num| num % 2 == 0} returns 2, since it is the first element that is divisible by 2 (returns true upon eval)
#
#The goal of this exercise is to recreate the find method using no built-in functions
