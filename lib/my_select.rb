def my_select(array)
  if block_given?
    i = 0 
    new_array = []
  
    while i < array.length
      new_array.push(yield array[i])
      i += 1 
    end 
    
    new_array
  else 
    puts "Hey! No block was given!"
  end 
end

collection = [1, 2, 3, 4, 5]
my_select(collection) do |n|
  if n.even?
    n
  end 
end 