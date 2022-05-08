//Cette algorithme a pour but de resoudre la methode filter de javascript

filtre=(number,search)=>{
     
    //Il nous faut un tableau vide 

    let final=[]

    //Si un des element du tableau convient a une condition donnée
    for (let i=0;i<number.length-1;i++){
        //La condition
        if(number[i]<search)
        final.push(number[i])
       
    }return final;

}
let number=[1,2,3,5,6,8,7,2,4,1,3,2,10]
//Exemple de INNPUT et OUTPUT
console.log(filtre(number,5));