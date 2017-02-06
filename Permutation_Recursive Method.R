per=function(a){
  permutation(a,"")
}
permutation=function(a,prefix){
  if (nchar(a)==0) {
    print(prefix)
  }else{
    for(i in 0:(nchar(a)-1)){
      rem=paste(substr(a,0,i),substr(a,i+2,nchar(a)),sep="")
      #p=paste(prefix,substr(a,i+1,i+1),sep="")
      permutation(rem,paste(prefix,substr(a,i+1,i+1),sep=""))
    }
  }
}