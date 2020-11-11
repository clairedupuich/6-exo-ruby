## exo 2 - Table de multiplication

L’utilisateur devrait renseigne un nombre de 1 chiffre
Le résultat affichera :

> La table de multiplication du chiffre ##chiffre saisie## est :
>
> 1 * `chiffre saisie` = `chiffre saisie` * 1
>
> 2 * …
>
> 3 *
>
> …
> >
> 10 *

puts "entrez un nombre:"
a = gets.chomp.to_i
b = 1
begin
   puts("#{a}*#{b}=#{b}*#{a}" )
   b += 1
end while  $num < 10


puts "entrez un nombre:"
num=$stdin.gets
num = num.chomp.to_i
while num > 9
    puts "Recommencez"
    num=$stdin.gets
    num = num.chomp.to_i
end
if num < 10
for i in 1..10
    mult=num*i
    puts "#{num} * #{i} = #{mult}"
end
end