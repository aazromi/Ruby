# Semua huruf Kapital
puts "Ini bapa budi".upcase

# Semua huruf kecil
puts "LIHAT SAJA".downcase

# Kapital di awal kalimat
puts 'judul sebuah cerita'.capitalize

# Putar kata
puts 'buku'.reverse

# Multiple manipulation
puts 'rama'.reverse.capitalize

# Permanent manipulation
kata = 'Kata'
puts kata.reverse
puts kata.upcase
puts kata
puts kata.upcase! #permanent upcase
puts kata

#One replace dan Global replace
#One replace => yang di awal saja
puts 'kata kata mutiara dari katana'.sub('kata','pisau')
#Global replace => semua kata
puts 'kata kata mutiara dari katana'.gsub('kata','pisau')
#Multiple replace
puts 'kata kata mutiara dari katana'.gsub('kata','pisau').sub('dari','dan')

#Strip
#Fungsi = menghilangkan spasi di samping kata
pass = "          password          ".strip
puts pass if pass == "password"
puts '      kata     a'
puts '      kata     a'.strip
puts '      kata     '.strip

# Buat array dari string
print 'ini,adalah,kelas,ruby,program'.split(',')
print 'ini adalah kelas ruby program'.split('a')