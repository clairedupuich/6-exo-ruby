exo_'
# VERSION 1 
​
# Methode que prends un tableau de notes et qui retourne une moyenne de ces notes
# def calculateAverage notes
#   total_note = 0
#   notes.each do |note|
#     total_note += note
#   end
#   total_note / notes.length
# end
​
# # Methode qui orchestre le processus
# def perform
#   puts '*' * 40
#   puts 'Bienvenue dans le calculateur de moyenne'
#   puts 'Veuillez entrer vos notes'
#   puts '*' * 40
#   puts ' '
  
#   notes = []
#   note = ''
#   while note != 'stop'
#     puts 'Entrez une note sur 20 ou tapez STOP si vous avez terminé' 
#     note = gets.chomp.downcase
#     if note == 'stop'
#       break
#     elsif note.to_i > 20
#       puts 'Vous avez donné une note supérieur à 20, veuillez ré-essayer'
#       next
#     elsif note != '0' && note.to_i == 0
#       puts 'Vous n\'avez pas entré un nombre, veuillez ré-essayer'
#       next
#     end
#     notes << note.to_i
#   end
  
#   puts '*' * 40
#   puts "Il y a eu #{notes.length} notes de saisies, et la moyenne est de #{calculateAverage(notes)}/20"
#   puts '*' * 40
# end
​
# perform()
​
​
​
​
​
​
​
​
​
​
​
​
# VERSION 2
​
# Methode que prends un tableau de notes et qui retourne une moyenne de ces notes
# def calculateAverage notes
#   total_note = 0
#   notes.each do |note|
#     total_note += note
#   end
#   total_note / notes.length
# end
​
# # Methode qui orchestre le processus
# def perform
#   puts '*' * 40
#   puts 'Bienvenue dans le calculateur de moyenne'
#   puts '*' * 40
#   puts ' '
  
#   puts 'Entrez vos notes en les séparants d\'un espace'
#   puts 'Si vous entrez des lettres ou une note supérieure à 20, elle sera retirée de la liste'
#   print '> ' 
#   notes_string = gets.chomp
​
#   notes = notes_string.split ' '
​
#   notes.map! do |note|
#     if note.to_i > 20 || note != '0' && note.to_i == 0
#       notes.delete(note)
#     end
#     note.to_i
#   end
  
#   puts '*' * 40
#   puts "Il y a eu #{notes.length} notes de saisies, et la moyenne est de #{calculateAverage(notes)}/20"
#   puts '*' * 40
# end
​
# perform()
​
​
​
​
​
​
​
​
​
​
​
​
​
​
​
# VERSION 2
​
# Methode qui prends des notes au format suivant ['10/20', '6/10', '25/30'] et un format /20 ou /10 ou /30
# Puis retourne un tableau [10, 5, 8, 9] sur le format souhaité /20, /30, /10
def convertToNote global_notes, format 
  notes = []
  global_notes.each do |note|
    format_note = note.split('/')[1]
    note = note.split('/')[0].to_f
    case format.to_i
    when 10
      if format_note == '10'
        notes << note
      elsif format_note == '20'
        notes << note / 2
      elsif format_note == '30'
        notes << note / 3
      end
    when 30
      if format_note == '10'
        notes << note * 3
      elsif format_note == '20'
        notes << note * 1.5
      elsif format_note == '30'
        notes << note 
      end
    else #20
      if format_note == '10'
        notes << note * 2
      elsif format_note == '20'
        notes << note
      elsif format_note == '30'
        notes << note / 1.5
      end
    end
  end
  notes
end
​
# Methode qui prends un tableau de notes et qui retourne une moyenne de ces notes
def calculateAverage notes
  total_note = 0
  notes.each do |note|
    total_note += note
  end
  total_note / notes.length
end
​
# Methode qui orchestre le processus
def perform
  puts '*' * 40
  puts 'Bienvenue dans le calculateur de moyenne'
  puts '*' * 40
  puts ' '
  
  puts 'Entrez vos notes en les séparants d\'un espace au format suivant : 10/10 20/30 12/20'
  print '> ' 
  notes = gets.chomp
  puts 'Entrez le format auquel vous souhaitez la moyenne (10 ou 20 ou 30)'
  print '> ' 
  format_choice = gets.chomp
​
  notes = notes.split ' '
  
  puts '*' * 40
  puts "Il y a eu #{notes.length} notes de saisies, et la moyenne est de #{calculateAverage(convertToNote(notes, format_choice)).to_i}/20"
  puts '*' * 40
end
​
# perform()



exo_5.rb
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








