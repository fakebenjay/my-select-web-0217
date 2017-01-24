array = [1, 2, 3, 4]

def my_select(collection)
  if block_given?
    new_collection = []
    i = 0
    while i < collection.length
        truthiness = (yield collection[i])
      if truthiness == true
        new_collection << collection[i]
      end
        i += 1
    end
    return new_collection
  else
    return "Oops!"
  end
end

my_select(array) do |num|
  num.even?
end
