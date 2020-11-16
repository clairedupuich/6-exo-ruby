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


=begin 
46.to_s(26).tr( "0123456789abcdefghijklmnopq", "abcdefghijklmnopqrstuvwxyz" )
=> "bu"

"bu".tr( "abcdefghijklmnopqrstuvwxyz", "0123456789abcdefghijklmnopq" ).to_i(26) 
=end

# On affiche une question à l'utilisateur :
puts "entrez un mot ou une phrace:"
# on créer une variable strthing
letters = gets.chomp.to_s

alphabet = "abcdefghijklmnopqrstuvwxy"


sum = 0

letters = letters.split('')

letters.each do |i|

    if alphabet.index+1

    sum += alphabet.index(i) + 1
end

puts sum

# alphabet1 = Hash[
#   "a" => 1, "b" => 2, "c" => 3,
#   "d" => 4, "e" => 5, "f" => 6,
#   "g" => 7, "h" => 8, "i" => 9,
#   "j" => 10, "k" => 11, "l" => 12,
#   "m" => 13, "n" => 14, "o" => 15,
#   "p" => 16, "q" => 17, "r" => 18,
#   "s" => 19, "t" => 20, "u" => 21,
#   "v" => 22, "w" => 23, "x" => 24,
#   "y" => 25, "z" => 26
# ]

# alphabet.each do |i|
#     puts i[1]
#     if i[1] > 9
#         i[1] = i[1][0] + i[1][1]
#     end
#     puts i[1]
# end

# value = letters.split("") #这个是将一串字符串转化成数组的方法 .split(%r{\s*})
# sum = value.reduce(0) {|sum, char| alphabet[char] + sum } #reduce(0)对嵌套的数组，哈希等混合数据结构进行合并或求和 括号中第一个参数是sum初始值; sum, char: 和在前，数组元素在后，中间必须以逗号隔开
# puts "votre letter, \'#{letters}\'  a value de: #{sum}"



# #On pourra imaginer de faire un poids de la lettre * 2 si c’est une lettre majuscule.
# #(A =1, A= 2….  b=2 B=4)
# skeys1 = "alphabet.keys1".upcase
# values1 = (alphabet.values )* 2
# alphabet1 = Hash [
#     "$keys1" => values1
# ]
# if values1 >= 10 
#     values1 = values1[0]+values1[1]
# end
# value1 = letters.split("") #这个是将一串字符串转化成数组的方法 .split(%r{\s*})
# sum = value1.reduce(0) {|sum, char| alphabet1[char] + sum } #reduce(0)对嵌套的数组，哈希等混合数据结构进行合并或求和 括号中第一个参数是sum初始值; sum, char: 和在前，数组元素在后，中间必须以逗号隔开
# puts "votre letter, \'#{letters}\'  a value de: #{sum}"