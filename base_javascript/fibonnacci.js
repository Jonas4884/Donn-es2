
//Cette fonction explique le principe du nombre de Fibonnacci d'une manière recursive.


//Début de l'algorithme
function fibonnacci(n) {
    if(n==0){
    return 0
}else if(n==1||(n==2))
   return 1
    else{
        return fibonnacci(n-2)+fibonnacci(n-1)}}
       console.log(fibonnacci(10));

//Fin de l'algorithme

