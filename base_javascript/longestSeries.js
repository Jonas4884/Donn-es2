//Cette algorithme a pour but de generer le chiffre ayant le plus d'occurences dans un tableau

export function longestSeries(tab){
    let count=0;
    let temp=[];
    if(tab.length==0){
        return 0;
    }
    if(tab==undefined||tab==null)
    throw ("Invalid Value");
for (let i=0; i<tab.length; i++){
    if(tab[i]==tab[i+1]){
        count++;
    }
    
    else{
        temp.push(count);
        count=1;
    }
}
return Math.max(...temp);
}
const tab = [10,5,3,3,4,9,9,9,9,9,6];
console . log (longestSeries(tab));