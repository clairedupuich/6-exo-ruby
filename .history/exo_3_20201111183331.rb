# exo 3 - Ecrire une méthode qui prendra 2 paramètres *nom* et *surnom* qui affichera

> `Hello  surnom`     # si seul le surnom est fourni
>
> `Bonjour  nom` #   si seul le nom est fourni
>
> `Bonjour Nom` # **ET QUE** si les 2 sont fournis

_tmp = expr0
if expr1 === _tmp || expr2 === _tmp
   stmt1
elsif expr3 === _tmp || expr4 === _tmp
   stmt2
else
   stmt3
end

def staff (nom, surnom)
    if nom = null && surnom != null
        puts "hello surnom"
    elsif nom != null && surnom = null
        puts "bonjour nom"
    else nom = null && surnom = null
        puts "bonjour Nom"
    end
    