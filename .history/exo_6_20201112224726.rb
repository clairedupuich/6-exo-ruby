## exo 6 - Le chiffre est bon, consonne

# Dans le cadre de son activité, la société de crédit **PAIETONPRET** a besoin de contrôler le numéro de SIRET des sociétés clientes de leur solution.

# Pour cela, elle a, au moment de la saisie par un membre de l'équipe, besoin de contrôler que le membre a bien saisie le numéro de SIRET sans saisir d’erreur de frappe ou d’audition.

# Pour cela nous allons utiliser l'algorithme de Luhn.
# 作为其活动的一部分，信贷公司** PAIETONPRET **需要检查其解决方案的客户公司的SIRET编号。

# 为此，她需要在团队成员输入条目时检查该成员是否正确输入了SIRET编号，而没有输入打字或试听错误。

# 为此，我们将使用卢恩算法。
# Votre mission si vous l'acceptez (c'est pas une question) sera de  créer le code qui permettra de vérifier le numéro de SIRET
# Le code devra simplement renvoyer  si c’est bon ou pas.
# 如果您接受（这不是问题），您的任务将是创建允许您验证SIRET编号的代码
# 无论是否良好，代码都必须返回。
# Ce message ne s’auto-détruira pas dans 24h...该消息不会在24小时内自毁

def firstStep numbers
    numbers = numbers.split('')#split方法的最基本用法分裂一个由单独字符或字符的静态序列组成的字符串。
  ​
    numbers.map! { |nb| nb.to_i }#map!方法获取一个可枚举对象和一个块，并为每个元素运行块，从块输出每个返回值:这里是将所有的nb都转变成证书
    
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