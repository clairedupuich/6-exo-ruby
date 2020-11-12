
## exo 2 - Table de multiplication
=begin
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
=end

# puts "entrez un nombre:"
# a = gets.chomp.to_i
# b = 1
# while b <= 10 do 
puts #{a}*#



# On affiche une question à l'utilisateur :
puts "entrez un nombre:"
# on créer une variable num
# On reccueil l'entrée de l'utilisateur
number=$stdin.gets
number = number.chomp.to_i
#On créer une boucle while qui a comme condition : tant que number est inferieur à 0 OU supérieur à 9 l'utilisateur
#doit recommencer
while number < 0 || number > 9
  puts "Recommencez"
  number=$stdin.gets
  number = number.chomp.to_i
end
#Si la valeur est strictement inférieure à 10
if number < 10
  #on crée une boucle avec un indice i qui varie de 1 à 10
  #puis on multiplie le chiffre saisie par l'utilisateur (number) par i et l'on stocke le résutat dans une variable result
  for i in 1..10
    result=number*i
    puts "#{number} * #{i} = #{result}"
end
end

