#def bagi(a,b)
#    hasil = a/b
#end
#puts bagi(8,2)
#puts bagi(8,0)

#rescue => param / penanganan error berdasarkan parameter
def bagi(a,b)
    begin
        hasil = a/b
    rescue => pesan
        pesan
    end
end

puts bagi(8,2)
puts bagi(8,0)

100.times do |angka|
    a = 1
    b = 0
    while a <= angka do
        if angka % a == 0
            b += 1
        end
        a += 1
    end
        if b == 2
            puts angka
        end
end