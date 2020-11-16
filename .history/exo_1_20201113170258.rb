# Exo 1 - Le palindrone

#Le script Ruby permettra de saisir un mot et de vérifier que ce mot est un palindrome.

#Le retour de code se fera comme suit :

#> Le mot `mot saisie` est un palindrome
#>
#> Le mot `mot saisie` n’est pas un palindrome




# On affiche une question à l'utilisateur :
puts "Entrez un mot:"
# on créer une variable name
# On reccueil l'entrée de l'utilisateur
a = $stdin.gets
 def palindrome (a)
    if a == reverse(a)
        puts "mot saisie est un palindrome"
    else
        puts "mot saisie n'est pas un palindrome"
    end
end

# 如
# exo_1 git:(master) ✗ ruby palindrome.rb
#Entrez un mot:
#nom
#Le mot nom n'est pas un palindrome