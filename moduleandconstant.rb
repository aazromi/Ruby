module NamaModule
    XXX = 100

    LOKAL = "Lokal Variabel"

    def method
        puts "Method dari dalam konstan"
    end

    module A
        XXX = 200
    end
end

puts NamaModule::XXX
puts NamaModule::LOKAL
puts NamaModule::A::XXX

#Penerapan module

module Kerenz
    class ApiConnection
        def connect
            puts 'Koneksi dari Kerenz::ApiConnection'
        end
    end
end

module Kool
    class ApiConnection
        def connect
            puts 'Koneksi dari Kool::ApiConnection'
        end
    end    
end

con = Kerenz::ApiConnection.new
con.connect

con = Kool::ApiConnection.new
con.connect

100.times do |angka|
    a = 1
    b = 0
    while a <= angka do
        if angka % a == 0
            b += 1
        end
        a += 1
        if b == 2
            puts angka
        end
    end
end