
for a in 1..100
  if a %3 == 0
    puts "fizz"
  elsif a %5 ==0
    puts "buzz"
  else
    puts a
  end


  if a %3 ==0 && a %5 ==0  #this could be inside the first part of the for loop as the first conditional
    puts "fizzbuzz"
  end
end




