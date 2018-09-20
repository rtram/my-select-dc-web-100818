def my_select(collection)
  if block_given?
    i = 0 
  
    while i < array.length
      yield array
      i += 1 
    end 
    
    array
  else 
    puts "Hey! No block was given!"
  end 
end

my_select(collection) do |n|
  n.select()
end 