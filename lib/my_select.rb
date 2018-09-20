def my_select(array)
    i = 0 
    new_array = []
  
    while i < array.length
      new_array.push(yield array[i])
      i += 1 
    end 
    
    new_array
end

collection = [1, 2, 3, 4, 5]
my_select(collection) do |n|
  if n.even?
    n
  end 
end 