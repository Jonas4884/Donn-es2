function index(word,search){
   for(let i=0;i<word.length;i++){
      if(word[i]==search)
      return i  
   }
   return -1}
console.log(index('word','a'));