hari = "Senin"
puts hari.upcase!
puts hari.reverse!

inputan = gets.chomp
puts "hari ini adalah hari #{hari}".gsub('hari',"#{inputan}")

puts "===================="

def fungsi(coba) #kalo pake * cuman bisa string
    4.downto(0) do |i|
        puts coba[i]
    end
end
array1 = ['Siapa','Rumah','Lokasi', 'Di sana', 'Daerah']
fungsi(array1)

puts "==============="

#array Parameter
def set(a, b, c, d)
    puts b,d,c,a
end
ar = ['hutan','gunung','pantai','jalanan']
set(*ar)

puts "============"

yayas = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
puts yayas[14]
puts yayas[3] = "a,b,c,d"
puts yayas[0] = 1.5
yayas.delete_at(9)
puts yayas[12] = "D"
puts yayas[13] = "D"
puts yayas[14] = "D"
puts yayas[15] = "D"
a = yayas.to_s
puts "#{yayas}".gsub('1','')

puts "==========="

manora = []
4.upto(9) do |o|
    manora.push o
end
manora.delete_if do |d|
    d > 7
end
puts manora.join('X')