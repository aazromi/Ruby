lemari = ["Buku","Handphone","Pensil","Baju","Flashdrive"]
tas = []
tas.push lemari[0]
tas.push lemari[2]
tas.push lemari[4]
lemari.delete_at(0)
lemari.delete_at(1)
lemari.delete_at(2)
puts "========= Lemari ============"
puts "#{lemari}"
puts "========= Tas ============"
puts "#{tas}"

puts "========= TES 2 ==========="

array1 = [1,2,3,4,5,6,7,8,9]
array2 = [1,7,6,0]
jumlahrotasi = 3

array1.unshift(9)
array1.unshift(8)
array1.unshift(7)

array1.pop(2)
array1.delete_at(9)
array1.delete_at(10)


array2.unshift(7)
array2.push(1)
array2.delete_at(1)
array2.delete_at(0)

puts "======== array1 ========="
puts "#{array1}"
puts "======== array2 ========="
puts "#{array2}"

puts "========= TES 3 ==========="

buah = {apel: 5000, nanas: 10000, semangka: 20000, jeruk: 4000, anggur: 6000}
puts "Apel yang ingin dibeli ?"
japel= gets.to_i
puts "Nanas yang ingin dibeli ?"
jnanas= gets.to_i
puts "Semangka yang ingin dibeli ?"
jsemangka= gets.to_i
puts "Jeruk yang ingin dibeli ?"
jjeruk= gets.to_i
puts "Anggur yang ingin dibeli ?"
janggur= gets.to_i

bayar = japel * buah[:apel] + jnanas * buah[:nanas] + jsemangka * buah[:semangka] + jjeruk * buah[:jeruk] + janggur * buah[:anggur]
if bayar > 50000
    disc = bayar * 10/100
    total = bayar - disc
end


puts "===== Buah yang dibeli ====="
puts "#{japel} Apel"
puts "#{jnanas} Nanas"
puts "#{jsemangka} Semangka"
puts "#{jjeruk} Jeruk"
puts "#{janggur} Anggur"

puts "===== Total Harga ====="
if bayar > 50000
    puts total    
end
if bayar <= 50000
puts bayar
end