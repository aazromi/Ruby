def prima(a)
    c = 0
    for i in 1..(a)
        if a%i==0
            c=c+1
        end
    end
    if c == 2
        puts a, "Bilangan Prima"
    else
        puts a, "Bukan Prima"
    end
end

print"Masukan angka :"
    a= gets.to_i
    for i in 1..(a)
        prima(i)
        i = i+1
    end