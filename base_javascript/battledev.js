//Ceci est une solution d'une battle dev niveau 2 de Isograd
function long(tab) {
    let count=0;
    let temp=[];
    if(tab.length==0){
        return 0;
    }
//compter les repetitions d'une nombre dans une tableau 

    for (let i=0; i<tab.length; i++){
        //accumuler s'il y a une répétitions
        if(tab[i]==tab[i+1]){
            count++;
        }
        //Sinon creer un compteur additionnel
        else{
            temp.push(count);
            count=1;
        }
    return Math.max(...temp);
}
//Ceci est une données pour l"exemple
}
const tab = [10,5,3,3,4,9,9,9,9,9,6];
console . log (long(tab));
