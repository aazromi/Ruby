#Object Oriented Programming - Class(Normal function)
class Calculator
    def penjumlahan(a,b)
        a + b
    end

    def pengurangan(a)
        a - 10
    end
end

calc = Calculator.new #Object - insert class to variable
hasil_penjumlahan = calc.penjumlahan(10, 5) #taking funcion from class
puts hasil_penjumlahan

hasil_pengurangan = calc.pengurangan(11)
puts hasil_pengurangan

puts '================='

# Object Oriented Programming - Constructor
class CalculatorKool
    def initialize(a,b) #method initialize harus ada
        @parameter_a = a # @adalah variabel umum pada class
        @parameter_b = b
        @lokal = a + b
    end

    def dijumlah
        @parameter_a + @parameter_b
    end

    def dikali
        @parameter_a * @parameter_b
    end
end

calcu = CalculatorKool.new(10,5) # Giving parameter as default variable
hasil_count = calcu.dijumlah
puts hasil_count
hasil_kali = calcu.dikali
puts hasil_kali

# OOP - Getter-Setter
class Print
    def initialize(text)
        @text = text
    end

    def print
        puts @text
    end
end

printer = Print.new('Saya sedang belajar getter-setter')
printer.print

printer = Print.new('Saya sedang mendalami getter-setter')
printer.print
puts '=============='

class Print
    attr_accessor :text
    attr_writer :text #setter fungsi nya mengubah nilai / mereset nilai dari parameter
    attr_reader :text #getter fungsi nya mengambil data dari parameter method initialize

    def initialize(text)
        @teks = text
    end
    #setter
    def text=(text)
        @text = text
    end
    #getter
    def text
        @text
    end
    def print
        puts "Mencetak : #{@teks}"
    end
end

printer = Print.new("Saya sedang belajar")
printer.print
printer.text = "tulisan kedua"
printer.print
printer.text = "getter and setter"
puts printer.text
puts "==============================="

class Contoh
    #attr_accessor :text
    #attr_writer :text #settet
    attr_reader :text #getter

    def initialize(text)
        @text = text
    end
    #setter
    def text=(text)
        @text = text.upcase
    end

    def print
        puts "Mencetak : #{@text}"
    end
end

puts "========"

class MesinPenemuJodoh
    attr_reader :text, :duration

    def initialize(text, duration)
        @text = text
        @duration = duration
    end
    def cetak
        puts "Hari ini #{@text} bertemu dengan #{@duration} ."
        puts "Minggu depan #{@text} menikah dengan #{@zahra} ."
    end
end

mesinku = MesinPenemuJodoh.new("ucup", "zahra")
mesinku.cetak
puts mesinku.text
puts mesinku.duration

puts "==============="

class MesinPenemuJodoh
    attr_writer :text

    def initialize(text)
        @text = text
    end
    def cetak
        puts "Hari ini saya belajar method #{@text}"
    end
end

mesinku = MesinPenemuJodoh.new("getter")
puts mesinku.cetak
puts mesinku.text
mesinku.text = "setter"
puts mesinku.text
puts mesinku.cetak

puts "============"

class MesinPenemuJodoh
    attr_reader :text, :duration
    #Fungsi-nya untuk mengambil attribute/instant variable yang diinginkan
    attr_writer :text, :duration
    #Fungsi-nya untuk mengubah attribure/instant variable yang diinginkan

    def initialize(text, duration)
        @text = text
        @duration = duration
    end
    def cetak
        puts "Hari ini #{@text} bertemu dengan #{@duration} ."
        puts "Minggu depan #{@text} menikah dengan #{@duration} ."
    end
end
mesinku = MesinPenemuJodoh.new("ucup","zahra")
mesinku.cetak
mesinku.text
mesinku.duration = "berbahagia"
mesinku.cetak

puts "============"

class MesinPenemuJodoh
    attr_accessor :text, :duration #Pengganti attribute reader dan writer
    def initialize(text, duration)
        @text = text
        @duration = duration
    end
    def cetak
        puts "Hari ini #{@text} bertemu dengan #{@duration} ."
        puts "Minggu depan #{@text} menikah dengan #{@duration} ."
    end
end
mesinku = MesinPenemuJodoh.new("ucup","zahra")
mesinku.cetak
mesinku.text
mesinku.duration = "berbahagia"
mesinku.cetak

puts "==========="

class MesinPenemuJodoh
    attr_accessor :text
    def initialize(text)
        @text = text
    end
    def cetak(format)
        cekformat(@text, format)
    end
    private
    def cekformat(text, format)
        if format == :plain
            text
        elsif format == :blink
            "*** #{text} ***"
        end
    end
end
mesinku = MesinPenemuJodoh.new('Belajar Ruby and Ruby on Rails')
puts mesinku.cetak(:blink)
puts mesinku.cetak(:plain)

#puts mesinku.cekformat("tes", :blink)

puts "==========="
class Siswa
    attr_accessor :nama, :materi, :nilai
    
    def initialize(nama, materi, nilai)
        @nama = nama
        @materi = materi
        @nilai = nilai
    end

    def belajar
        puts "Siswa #{@nama} sedang belajar #{@materi}."
    end

    def ulangan
        puts "Siswa #{@nama} mendapatkan nilai #{@nilai} untuk materi #{@materi}."
    end
end

class Kelas12 < Siswa
    attr_accessor :mapel, :nilai_un

    def initialize(mapel, nilai_un)
        @mapel = mapel
        @nilai_un = nilai_un
    end
    def unbk
        puts "Siswa #{@nama} mengerjakan UN mapel #{@mapel} dengan nilai #{@nilai_un}."
    end
end

sutera = Siswa.new('Sutera', 'Ruby', 10)
sutera.belajar
sutera.ulangan

mutia = Kelas12.new('Matematika', 10)
mutia.nama = "Mutia"
mutia.materi = "Ruby on Rails"
mutia.nilai = 9
mutia.belajar
mutia.ulangan
mutia.unbk
#sutera.unbk

puts "==========="
class Siswa
    attr_accessor :nama, :materi, :nilai
    
    def initialize(nama, materi, nilai)
        @nama = nama
        @materi = materi
        @nilai = nilai
    end

    def belajar
        puts "Siswa #{@nama} sedang belajar #{@materi}."
    end

    def ulangan
        puts "Siswa #{@nama} mendapatkan nilai #{@nilai} untuk materi #{@materi}."
    end
end

class Kelas12 < Siswa
    attr_accessor :mapel, :nilai_un

    def initialize(mapel, nilai_un)
        @mapel = mapel
        @nilai_un = nilai_un
    end

    def belajar
        puts "Siswa #{@nama} belajar #{@materi} dengan serius."
    end

    def unbk
        puts "Siswa #{@nama} mengerjakan UN mapel #{@mapel} dengan nilai #{@nilai_un}."
    end
end

mutia = Kelas12.new('Matematika', 10)
mutia.nama = "Mutia"
mutia.materi = "Ruby on Rails"
mutia.nilai = 9

mutia.belajar

puts "========"
class ApiConnection
    attr_accessor :url, :name
    
    def initialize(url, name)
        @url = url
        @name = name
    end

    def connect
        @connect = true #logika program di sini
    end

    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end
end

class FacebookConnection < ApiConnection
    
    def version
        1
    end

    def status
        :connected
    end
end
facebook_connection = FacebookConnection.new('https://facebook.com','facebook')

status = facebook_connection.status
version = facebook_connection.version

puts status
puts version

#Super Method
puts "========"
class ApiConnection
    attr_accessor :url, :name
    
    def initialize(url, name)
        @url = url
        @name = name
    end

    def connect
        @connect = true #logika program di sini
    end

    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end
end
class FacebookConnection < ApiConnection
    
    def version
        1
    end

    def connect
        super
    end

    def status
        :connected
    end
end
facebook_connection = FacebookConnection.new('https://facebook.com','facebook')

status = facebook_connection.status
version = facebook_connection.version

puts status
puts version

puts "========"
class ApiConnection
    attr_accessor :url, :name
    
    def initialize(url, name)
        @url = url
        @name = name
    end

    def connect
        @connect = true #logika program di sini
    end

    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end
end
class FacebookConnection < ApiConnection
    class << self
    def version
        2
    end

    def connect
        super
    end

    def status
        :connected
    end
end
facebook_connection = FacebookConnection.new('https://facebook.com','facebook')

status = facebook_connection.status
version = facebook_connection.version

puts status
puts version