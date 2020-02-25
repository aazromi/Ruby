puts 'Test 1 array'
puts '========'


print 'a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,s,y,z'.split(',')

puts '========'

array = []
3.times do
    print 'masukkan kata :'
    a = gets.chomp
    array.push(a)
    puts a
end
puts "===="
puts array
