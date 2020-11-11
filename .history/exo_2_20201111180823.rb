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
   puts("#{a}*b=#{}*#{a}" )
   b += 1
end while  $num < 10