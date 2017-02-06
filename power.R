power=function(a,b){
  if(b<0){
    return(0)
  }else if(b==0){
    return(1)
  }else{
    return(a*power(a,b-1))
  }
}