# Penanganan Error
def bagi(a, b)
    begin
        hasil = a/b
    rescue
        error = true
    end
    if error
        'Terjadi error'
    else
        hasil
    end
end

puts bagi(8,2)
puts bagi(8,0)
puts '======='

# Error Messaging
def bagi(a,b)
    begin
        hasil = a/b
    rescue => pesan
        pesan #ini masih error, hanya saja dijadikan string
    end
end

puts bagi(8,2)
puts bagi(8,0)