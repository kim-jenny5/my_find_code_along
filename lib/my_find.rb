require 'pry'

def my_find(collection)
    i = 0
    while i < collection.length
        return collection[i] if yield(collection[i])
        # if the block return true, return the argument we passed into yield
        # if the block return false, it continues to the next element in the array
        i += 1
    end
end