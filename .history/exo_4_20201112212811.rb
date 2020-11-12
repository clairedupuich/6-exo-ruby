## exo 4 - Calcul de la moyenne 计算平均值

# Un instituteur souhaite pouvoir aller plus vite en saisissant les notes de ces élèves et en obtenir le nombre est la moyenne pour le trimestre.

# Pour cela, Albert qui a suivi une formation dans l’informatique, il y a fort longtemps, lui a proposé de l’aider. Malheureusement, les cours d’Albert sont un peu loin et il vous demande votre aide.

# Donc, comme vous êtes de bonnes personnes, vous lui avez tou.te.s dit ouI
# 老师希望能够通过输入这些学生的成绩来加快学习速度，并获得该数字作为该学期的平均值。

# 为此，很久以前参加过计算机培训课程的Albert愿意帮助他。不幸的是，阿尔伯特的课程有点遥远，他正在寻求您的帮助。

# 所以既然你是好人，你们都对她说了
# Le script devra permettre de saisir note par note,  une fois les notes saisies on stoppera la saisie avec le mot STOP

# Afin de ne pas obtenir d’erreur, on s’assure que __les saisies soient bien des chiffres__.

# Un fois le mot `« STOP »`  saisie,
# Le programme répondra de lui même qu’il y a eu X notes de saisies et que la moyenne est de Y / 20

# __1ere variante  (optionnelle)__

# À la saisie des notes, au lieu de saisir note par note, on saisie toutes les notes sur une seule saisie séparée par des espaces, la validation vaudrait l’envoi des note.

# __2eme variante (optonnelle)__

# Au lieu de faire une moyenne sur 20 on pourrait imaginer faire une moyenne sur 10 20 30 mais aussi permettre de saisir des notes non plus sur 20 mais elles aussi sur 10 20 30, sasvhant que bien entendu, il est possible de saisir en même temps des notes sur 10 et des notes sur 20.


motSaisie = ""

class Grade 

    def initialize #然后定义了构造函数initialize
      @dataStore = [] #在构造函数中，定义了一个实例变量@dataStore,该变量是一个数组。
    end
  
    def add(score) # pour add les notes
        score = gets.chomp.to_i
      @dataStore.push(score)
    end
  
    def avg # pour Calcul de la moyenne 
      sum = 0
      @dataStore.each do |data|
        sum = sum + data
      end
      if motSaisie ="STOP"
        avg = sum / @dataStore.length/20
        return avg
      else
      avg = sum / @dataStore.length
      return avg
      end
    end
    p @dataStore
    puts avg
  end
  puts 'Bienvenue dans le calculateur de moyenne'
  puts 'Veuillez entrer vos notes'
    
  #首先我们定义了一个类Grade，然后定义了构造函数initialize，在构造函数中，定义了一个实例变量@dataStore,该变量是一个数组。随后定义了两个方法add和avg，分别用来添加分数、求平均分，
  #在添加分数函数中，调用数组@dataStore的push方法将score加入数组，在求平均分函数中，利用迭代器取出dataStore数组中的每一个元素，然后将其加入sum当中，最后用sum/length求出平均数。

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
# # Methode qui orchestre le processus协调流程的方法
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