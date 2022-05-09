//Cette algorithme a pour but de generer le chiffre ayant le plus d'occurences dans un tableau

function longestSeries(tab){
    // il nous faut un compteur de valeur et un noveau tableau
    let count=0;
    let temp=[];
    if(tab.length==0){
        return 0;
    }

    //Si le tableau est vide,retourne Invalid value
    if(tab==undefined||tab==null)
    throw ("Invalid Value");

    //Comptez les occurences

    //Parcourir le tableau donné
for (let i=0; i<tab.length; i++){
    if(tab[i]==tab[i+1]){
        count++;
    }
    //Sinon ajouter cette element dans un nouveau tableau
    else{
        temp.push(count);
        count=1;
    }
}
return Math.max(...temp);
}
    //Exemple d'entrée et sortie
const tab = [10,5,3,3,4,9,9,9,9,9,6];
console . log (longestSeries(tab));

//Fin de l'algorithme