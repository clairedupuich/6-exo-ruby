# Exo 1 - Le palindrone

#Le script Ruby permettra de saisir un mot et de vérifier que ce mot est un palindrome.

#Le retour de code se fera comme suit :

#> Le mot `mot saisie` est un palindrome
#>
#> Le mot `mot saisie` n’est pas un palindrome


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

# # exo 3 - Ecrire une méthode qui prendra 2 paramètres *nom* et *surnom* qui affichera

# > `Hello  surnom`     # si seul le surnom est fourni
# >
# > `Bonjour  nom` #   si seul le nom est fourni
# >
# > `Bonjour Nom` # **ET QUE** si les 2 sont fournis

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

# À la saisie des notes, au lieu de saisir note par note, on saisie toutes les notes sur une seule
# saisie séparée par des espaces, la validation vaudrait l’envoi des note.

# __2eme variante (optonnelle)__

# Au lieu de faire une moyenne sur 20 on pourrait imaginer faire une moyenne sur 10 20 30 mais 
# aussi permettre de saisir des notes non plus sur 20 mais elles aussi sur 10 20 30, sasvhant que 
# bien entendu, il est possible de saisir en même temps des notes sur 10 et des notes sur 20.


# ## exo 5 Le poids des mots

# À la saisie d’un mot ou d’un groupe de mot séparé par un espace.
# 输入一个或一组用空格分隔的单词时。

# Le script devra retourner le poids total du mot ou groupe de mot.
# 脚本应返回单词或单词组的总重。
# Le principe `a = 1` , `b = 2`, `c = 3` … `z = 26`

# Un espace comptera pour `0`
# 空格将计为“ 0”

# Il n’y a pas de différence entre un « A » et un « a » , ils feront tous les 2 un poids de 1

# Le nombre sera ramené à un nombre de 1 chiffre  该数字将减少为1位数字
# Exemple `Z = 26 = 2+6 = 8`
# **Z vaut d’office 8**
# Quelques soit les lettres autour.

# Example complet :
# > D A V I D  =
# >
# > 4_1_22_9_4 =
# >
# > 4 + (2+2) + 9 + 4 =
# >
# > 21

# **Pour les plus chauds** :
# On pourra imaginer de faire un poids de la lettre * 2 si c’est une lettre majuscule.
# (A =1, A= 2….  b=2 B=4)

# **Attention** cette modification devra permettre d’utiliser l’une ou l’autre façon de compter.


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