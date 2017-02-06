# Recursive-examples
#function used to calculate a^b
power=function(a,b){
  if(b<0){
    return(0)
  }else if(b==0){
    return(1)
  }else{
    return(a*power(a,b-1))
  }
}

#function for permutations

per=function(a){
  permutation(a,"")
}

permutation=function(a,prefix){
  if (nchar(a)==0) {
    print(prefix)
  }else{
    for(i in 0:(nchar(a)-1)){
      rem=paste(substr(a,0,i),substr(a,i+2,nchar(a)),sep ="")
      #p=paste(prefix,substr(a,i+1,i+1),sep ="")
      permutation(rem,paste(prefix,substr(a,i+1,i+1),sep=""))
    }
  }
}

#Fibonacci numbers
fib=function(n){
  if(n<2){
    n
  }else{
    fib(n-1)+fib(n-2)
  }
}
fibonacci=function(m){
  a=numeric()
  for(i in 0:m){
    a[i+1]<-fib(i)
  }
  return(a)
}
