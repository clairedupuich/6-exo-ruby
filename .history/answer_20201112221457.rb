# Generer un hash avec les lettres de l'alphabet et leurs poids
def generateHashWithLetterAndWeight 
    hash = {}
    for num in 0..25
      hash[[*('a'..'z')][num]] = (num + 1).to_s
    end
    new_hash = {} 
    hash.each do |k, v| 
      v.length > 1 ? new_hash[k] = v[0].to_i + v[1].to_i : new_hash[k] = v
    end
    new_hash
  end
  ​
  # Methode qui calcule le poid des mots
  def calculateWeight word
    letters = word.split
    weight = 0
    hash_alphabet = generateHashWithLetterAndWeight()
    letters.each do |letter|
     (/[[:upper:]]/.match(letter)) ? weight += hash_alphabet[letter.downcase].to_i * 2 : weight += hash_alphabet[letter.downcase].to_i
    end
    weight
  end
  ​
  # Methode qui orchestre le processus
  def perform
    puts '*' * 40
    puts 'Bienvenue dans le calculateur de poids des mots'
    puts '*' * 40
    puts ' '
  ​
    puts 'Entrez vos mots dans le format suivant : A V E C D E S E S P A C E S'
    print '> ' 
    capture = gets.chomp
  ​
    puts '*' * 40
    puts "Le poid de votre saisie : #{calculateWeight(capture)}"
    puts '*' * 40
  end
  ​
  # perform()
  Réduire
  
  
  
  
  
  
  
  
 
  exo_6.rb 
  # Step 1
# L'algorithme multiplie par deux un chiffre sur deux, en commençant par l'avant dernier et en se déplaçant de droite à gauche. Si le double d'un chiffre est plus grand que neuf (par exemple 2 × 8 = 16), alors il faut le ramener à un chiffre entre 1 et 9 en prenant son reste dans la division euclidienne par 9. Pour cela, il y a 2 manières de faire (pour un résultat identique) :
# Soit on additionne les chiffres composant le double. Dans l'exemple du chiffre 8, 2 × 8 = 16, puis on additionne les chiffres 1 + 6 = 7.
# Soit on soustrait 9 au double. Avec le même exemple, 16 − 9 = 7.
​
# Step 2
# La somme de tous les chiffres obtenus est effectuée.
​
# Step 3
# Le résultat est divisé par 10. Si le reste de la division est égal à zéro, alors le nombre original est valide.
​
​
def firstStep numbers
  numbers = numbers.split('')
​
  numbers.map! { |nb| nb.to_i }
  
  new_numbers = []
  i = 0
  numbers.reverse.each do |nb|
    if i % 2 != 0
      (nb * 2) > 9 ? new_numbers << (nb * 2) - 9 : new_numbers << nb * 2
      i += 1
    else
      new_numbers << nb
      i += 1
    end
  end
  new_numbers
end
​
def secondStep numbers
  sum = 0
  numbers.each do |nb| 
    sum += nb 
  end
  sum
end
​
def thirdStep nb
  nb % 10 == 0 ? 'Le numéro de SIRET est valide' : 'Le numéro de SIRET n\'est pas valide'
end
​
def perform
  puts '*' * 40
  puts 'Bienvenue dans le validateur de SIRET'
  puts '*' * 40
  puts ' '
​
  puts 'Entrez votre numéro de SIRET'
  print '> ' 
  capture = gets.chomp
​
  puts '*' * 40
  puts thirdStep(secondStep(firstStep(capture)))
  puts '*' * 40
end
​
perform()
Réduire








