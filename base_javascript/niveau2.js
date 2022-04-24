/*le but de l'algorithme est de compter le tour ce qu'il faut pour sauver des personnes avec tab[x],étant x une bateau*/
function sauve(tab){
    let tabt=tab
    let tour=1
    for (let i = 0; i < tab.length; i++) {
tabt=tab[i]/10
if (tabt<1 && tabt>0)
tour++
else(tabt>1)
tabt=Math.floor(tabt)+i/2
tour+=tabt
    }return tour
}
let tab=[45,13,15,12]
console.log(sauve(tab));