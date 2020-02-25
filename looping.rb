#Normal times
10.times do
    puts 'Loopingan'
end

# Times with index
10.times do |x|
    puts x
end

# Times with gets
3.times do
    print 'masukkan kata :'
    a = gets.chomp
    puts a
end

# One line times
3.times do
    puts 'One line times'
end

#Ascending loop
1.upto(7) do |x|
    puts "Ascending #{x}"
end

#Descending loop
7.downto(1) do |x|
    puts "Ascending #{x}"
end

total = 0
while total < 5 do
    puts "total = #{total}"
    total += 1
end