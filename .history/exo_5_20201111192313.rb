## exo 5 Le poids des mots

À la saisie d’un mot ou d’un groupe de mot séparé par un espace.
输入一个或一组用空格分隔的单词时。

脚本应返回单词或单词组的总权重。
Le script devra retourner le poids total du mot ou groupe de mot.

Le principe `a = 1` , `b = 2`, `c = 3` … `z = 26`

Un espace comptera pour `0`

Il n’y a pas de différence entre un « A » et un « a » , ils feront tous les 2 un poids de 1

Le nombre sera ramené à un nombre de 1 chiffre
Exemple `Z = 26 = 2+6 = 8`
**Z vaut d’office 8**
Quelques soit les lettres autour.

Example complet :
> D A V I D  =
>
> 4_1_22_9_4 =
>
> 4 + (2+2) + 9 + 4 =
>
> 21

**Pour les plus chauds** :
On pourra imaginer de faire un poids de la lettre * 2 si c’est une lettre majuscule.
(A =1, A= 2….  b=2 B=4)

**Attention** cette modification devra permettre d’utiliser l’une ou l’autre façon de compter.
