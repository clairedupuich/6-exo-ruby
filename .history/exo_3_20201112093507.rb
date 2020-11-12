# # exo 3 - Ecrire une méthode qui prendra 2 paramètres *nom* et *surnom* qui affichera

# > `Hello  surnom`     # si seul le surnom est fourni
# >
# > `Bonjour  nom` #   si seul le nom est fourni
# >
# > `Bonjour Nom` # **ET QUE** si les 2 sont fournis


def staff (nom, surnom)
    nom = gets.chomp
    surnom = gets.chomp
    if nom == nil && surnom != nil
        puts "hello" + " "+ surnom
    elsif nom != null && surnom == null
        puts "bonjour"+ " "+ nom
    else nom != nil && surnom != nil
        puts "bonjour"+ " "+ nom + surnom
    end
end