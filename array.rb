# Array
array = [1,2,3,4,5]

print array

mix_array = ['Ammar', 1, :titikdua]

print mix_array

blank_array = []

print blank_array

arraybaru = [1,2,3,4,5]

# Panggil item array sesuai kordinat
arraybaru [3] = 10
puts arraybaru

# Bisa juga di string
array2 = ['A','B','C','D']
array2 [1] = 'Z'
puts array2
puts '============'

# Delete and Hide array's item
arr = ['A','B','A','A','C','D']
arr.delete('A') #delete all 'A'
puts arr
puts '==============='
arr = ['A','B','A','A','C','D']

arr[0] = [] #sembunyikan index ke 0
puts arr
puts arr.length #jumlah item pada Array
puts '============='
arr = ['A','B','A','A','C','D']
arr.delete_at(1)
puts arr
puts '============='

# Delete if atau Eliminasi item
arr2 = [1,2,3,4,5,6,7]
arr2.delete_if do |nilai|
    nilai > 5
end
puts arr2
puts '========='
arr3 = ['A','B','C']
arr3.delete_if do |item|
    item == 'A'
end
puts arr3
puts '==========='

# One line
arr4 = ['A','B','C','D']
arr4.delete_if do |item| item == 'B' 
end
puts arr4
puts '+++++++++++++'

# Array joining into string
puts [1,2,3,4,5].join(',')
puts [1,2,3,4,5].join('A')
puts '==========='

# Push and Pop , Push = Menambah item paling belakang
a = [1,2,3,4,5]
a.push(6)
puts a
a.push(7,8,9)
puts a
a << 10
puts a

# Pop = Menghapus jumlah item dari belakang
b = [1,2,3,4]
b.pop(1)
puts b
b = [1,2,3,4]
b.pop(2)
puts b
puts '==========='

# Unshift dan Shift (tambah dan hapus dari depan)
c = [1,2,3,4,5]
c.unshift(0) #tambahkan 1 item : 0
c.unshift(-1,-2) #tambahkan 2 item: -1 dan -2
puts c
puts '==========='

c.shift(1) #hapus 1 item dari paling depan
puts c
puts '==========='

c.shift(2) # hapus 2 item dari depan
puts c
puts '==========='

#Looping array
d = ['D','C','B','A','Z','N']
d.each do |item|
    puts "item : #{item}"
end
puts '-----------'
#reverse looping
5.downto(0) do |z|
    puts d[z]
end

# Acak Array dengan Shuffle
sayang = [1,2,3,4,5]
puts "#{sayang.shuffle!}"
puts "#{sayang}"
puts '--------------'

#Looping array dengan while
total = 0
while total < sayang.length do
    puts "total = #{total}"
    total += 1
end
puts '-----'
cinta = [1,2,3,4,5]
for item in cinta
    puts item
end
puts '----'
#cara imperative atau tradisional
kamu = [60,70,80,100,65]
kamulagi = []
kamu.each do |item|
    if item >= 70
        kamulagi << item
    end
end
puts kamulagi
puts '========'

#select
kamulagi = kamu.select do |item|
    item < 100    
end
puts "#{kamulagi}"

#one line select
puts "#{kamu.select{|item | item < 100}}"