puts !true
puts !!true
puts !!!true
puts !!!!true

#If,elsif,else

a = 'AGA'
if a == 'APA'
    puts 'Berhasil'
elsif a == 'AGA'
    puts 'Canceled'
else
    puts 'Gagal'
end

#One line if

#a == true ? puts a : b javascript
puts 'Berhasil' if a == 'AGA'

# Unless conditional
a = 'ABA'
puts 'Gagal' unless a == 'APA'

#If and Gets
puts 'Masukkan nilai ujian anda'
nilai = gets.to_f

    if nilai >= 80
        puts "Nilai A"
    elsif nilai >= 70
        puts "Nilai B"
    else
        puts 'Nilai C'
    end

#logikal condition in if
password = 'karant'
username = 'unity'
if username == 'unity' && password == 'karant'
    puts 'Sukses'
else
    puts 'Gagal'
end

#If inside if
if username == 'user'
    if password == 'karant'
        puts 'Sukses'
    else
        puts 'Gagal'
    end
else
    puts 'Username tidak ada'
end

#Case When Conditional
puts 'Masukkan jenis kelamin'
gender = gets.chomp
case gender
when 'P'
    puts 'Anda Perempuan'
when 'L'
    puts 'Anda laki-laki'
else
    puts 'Silahkan masukkan hasil tes lab'
end