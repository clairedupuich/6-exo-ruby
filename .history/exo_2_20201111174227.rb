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

valeur1 = gets.chomp.to_i
$i = gets.chomp.to_i(a)
$num = 10
begin
   puts("在循环语句中 i = #$i" )
   $i +=1
end while $i < $num