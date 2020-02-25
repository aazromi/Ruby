# Array of Object variable with has
# First Hash -> String element
hash = {'satu' => 1, 'dua' => 2, 'tiga' => 'selamat'}
puts hash['tiga']
# Second Hash -> Simbol element
hash = {:satu => 'Katakan', :dua => 'Salah', :tiga => 'Benar'}
puts hash[:satu]
# Third Hash -> Default element
hash = {satu: 'Aji', dua: 'World', tiga: 'Home'}
puts hash[:satu] #must use :
# puts hash.satu

# Empty Hash
object = {nama: 'Azromi', job:'Programmer', company:'Freelancer'}
puts object[:salary]
puts object.fetch(:nama)
puts object.fetch(:salary, 3000)
puts object = Hash.new('belum ada nilai') #default answer set as empty value
puts object[:nilai]
puts object.fetch(:nilai, 100)
# Saat kita menjalankan hash[:nilai] maka outputnya => 'belum ada nilai'

new_hash = Hash.new
new_hash[:nama] = 'Azromi'
puts(new_hash)
new_hash[:kelas] = 'RPL XII-1'
puts new_hash
#new_hash[id:] = 123 #error, harus symbol atau string
puts '++++++'
# Delete()
new_hash.delete(:nama)
puts new_hash
new_hash[:nama] = 'Ammar'
puts new_hash
#new_hash.delete(:nama, 'kelas')error, hanya bisa satu element

# Looping dalam has
puts '++++++'


yayas = {nama: 'Uni', kelas: 'A!', tipe: 'Normal'}
yayas.each do |ayu, sekartaji|
    puts "#{ayu} ==> #{sekartaji}"
end

yayas.each do |ayu|
    puts "#{ayu} item "
end

yayas.each_key do |ayu|
    puts "ambil #{ayu}"
end

puts "ambil #{yayas.keys}"
puts "ambil #{yayas.values}"