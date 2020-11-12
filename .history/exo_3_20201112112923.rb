# # exo 3 - Ecrire une méthode qui prendra 2 paramètres *nom* et *surnom* qui affichera

# > `Hello  surnom`     # si seul le surnom est fourni
# >
# > `Bonjour  nom` #   si seul le nom est fourni
# >
# > `Bonjour Nom` # **ET QUE** si les 2 sont fournis


def staff (nom, surnom)
    nom = gets.chomp
    surnom = gets.chomp
    if nom == '' && surnom != ''
        puts "hello" + " "+ surnom
    elsif nom != "" && surnom == ""
        puts "bonjour"+ " "+ nom
    else nom != '' && surnom != ''
        puts "bonjour"+ " "+ nom + surnom
    end
end

staff ('claire')