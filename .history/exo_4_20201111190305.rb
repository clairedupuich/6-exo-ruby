## exo 4 - Calcul de la moyenne 计算平均值

Un instituteur souhaite pouvoir aller plus vite en saisissant les notes de ces élèves et en obtenir le nombre est la moyenne pour le trimestre.

Pour cela, Albert qui a suivi une formation dans l’informatique, il y a fort longtemps, lui a proposé de l’aider. Malheureusement, les cours d’Albert sont un peu loin et il vous demande votre aide.

Donc, comme vous êtes de bonnes personnes, vous lui avez tou.te.s dit ouI
老师希望能够通过输入这些学生的成绩来加快学习速度，并获得该数字作为该学期的平均值。

为此，很久以前参加过计算机培训课程的Albert愿意帮助他。不幸的是，阿尔伯特的课程有点遥远，他正在寻求您的帮助。

所以既然你是好人，你们都对她说了
Le script devra permettre de saisir note par note,  une fois les notes saisies on stoppera la saisie avec le mot STOP

Afin de ne pas obtenir d’erreur, on s’assure que __les saisies soient bien des chiffres__.

Un fois le mot `« STOP »`  saisie,
Le programme répondra de lui même qu’il y a eu X notes de saisies et que la moyenne est de Y / 20

__1ere variante  (optionnelle)__

À la saisie des notes, au lieu de saisir note par note, on saisie toutes les notes sur une seule saisie séparée par des espaces, la validation vaudrait l’envoi des note.

__2eme variante (optonnelle)__

Au lieu de faire une moyenne sur 20 on pourrait imaginer faire une moyenne sur 10 20 30 mais aussi permettre de saisir des notes non plus sur 20 mais elles aussi sur 10 20 30, sasvhant que bien entendu, il est possible de saisir en même temps des notes sur 10 et des notes sur 20.


class Grade

    def initialize
      @dataStore = []
    end
  
    def add(score)
      @dataStore.push(score)
    end
  
    def avg
      sum = 0
      @dataStore.each do |data|
        sum = sum + data
      end
      avg = sum / @dataStore.length
      return avg
    end
  end

  首先我们定义了一个类Grade，然后定义了构造函数initialize，在构造函数中，定义了一个实例变量@dataStore,该变量是一个数组。随后定义了两个方法add和avg，分别用来添加分数、求平均分，在添加分数函数中，调用数组@dataStore的push方法将score加入数组，在求平均分函数中，利用迭代器取出dataStore数组中的每一个元素，然后将其加入sum当中，最后用sum/length求出平均数。