#Def - Defination
def halo
    puts 'Hello world'
end
halo

#Def with Return
def hai
    return 'Saya di sini'# kalo mau maksa di return
    return 'Anda di sini'
    'Saya di sana'
end
puts hai

#Def return with manipulation
puts hai.reverse

# Parameter
def numeric (angka1, angka2)
    puts angka1 + angka2
end
numeric(3,9)

#Default parameter
def surat (nama = 'yusril', email="username@gmail.com")
    puts "#{nama} #{email}"
end
surat
surat('syah')
surat('adem', 'adem@gmail.com')

#Plain parameter
def kirim(nama: 'Mou', email: 'username@gmail.com')
    puts "#{nama} #{email}"
end
kirim
kirim(nama: 'Azromi')
kirim(email: 'Aazromi@gmail.com')
kirim(email: 'Aazromi@gmail.com',nama: 'Azromi')

#Variabel sebagai method
cetak = Proc.new do
    puts 'Cetak kata'
end
cetak.call()

method = Proc.new do |nama,user|
    puts nama
    puts user
end
method.call('Azromi','User')
method['azromi','ammar']

pembagian = -> (angka1, angka2)do
    angka1 / angka2
end
puts pembagian.call(12,3)

#Splat method
def menu(*item)
    puts item[0]
    puts item[1]
    puts item[2]
    puts item[3]
end
array1 = ['Siapa','Rumah','Lokasi','Disana']
menu(array1)

#Array parameter
def setarray(itemA,itemB,itemC)
    puts itemA
    puts itemB
    puts itemC
end
array2 = ['Barang','Thing','Device']
setarray(*array2)