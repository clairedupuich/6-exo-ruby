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


puts "Enter your siret number"
SIRET_number = gets.chomp

def verify_siret (siret_number)
    siret_number = siret_number.split('')#split方法的最基本用法分裂一个由单独字符或字符的静态序列组成的字符串。成为一个数组table。
    if siret_number.length == 14
        sum = 0
        i = 0

        # 执行卢恩算法
        for nb in siret_number do
            nb = nb.to_i
            if i % 2 != 0 #选出数组中的奇数位，令它乘2后，如果大于9则结果要减去9
                nb *= 2
                if nb > 9
                    nb -= 9
                end
                sum += nb
            else
                sum += nb
            end
            i += 1
        end
        puts sum
        if sum % 10 == 0
        return "ok"
    end
end

puts verify_siret(SIRET_number) ? "ok" : "not ok"
 

