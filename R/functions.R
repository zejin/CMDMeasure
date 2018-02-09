
### U-centered matrix ###
u.center <- function(x){
  if (is.matrix(x)) {n=dim(x)[1]
                     if (isSymmetric(x)) A=x else A=as.matrix(dist(x))} else {n=length(x); A=as.matrix(dist(x))}
  R=rowSums(A)
  C=colSums(A)
  T=sum(A)
  r=matrix(rep(R,n),n,n)/(n-2)
  c=t(matrix(rep(C,n),n,n))/(n-2)
  t=matrix(T/(n-1)/(n-2),n,n)
  UA=A-r-c+t
  diag(UA)=0
  return(UA)
}

### double-centered matrix ###

d.center <- function(x){
  if (is.matrix(x)) {n=dim(x)[1]
                     if (isSymmetric(x)) A=x else A=as.matrix(dist(x))} else {n=length(x); A=as.matrix(dist(x))}
  R=rowSums(A)
  C=colSums(A)
  T=sum(A)
  r=matrix(rep(R,n),n,n)/n
  c=t(matrix(rep(C,n),n,n))/n
  t=matrix(T/n^2,n,n)
  UA=A-r-c+t
  return(UA)
}

### distance covariance ###
dcovar <- function(x,y){
  n=length(x)
  dcov=sqrt(sum(d.center(x)*d.center(y))/n^2)
  return(dcov)
}

###distance correlation ＃＃＃＃
dcorr <- function(x,y){
  n=length(x)
  dcorr=sqrt(sum(d.center(x)*d.center(y))/n^2/sqrt(sum(d.center(x)*d.center(x))/n^2*sum(d.center(y)*d.center(y))/n^2))
  return(dcorr)
}

### R* function ###
r.star <- function(x,y) {
  Ax=u.center(x)
  Ay=u.center(y)
  n=dim(Ax)[1]
  inner=sum(Ax*Ay)/n/(n-3) 
  norm1=sqrt(sum(Ax*Ax)/n/(n-3))
  norm2=sqrt(sum(Ay*Ay)/n/(n-3))  
  r=inner/norm1/norm2
  return(r)
}

### inner product of Hn ###
inner <- function(x,y){
  n=dim(x)[1]
  ip=sum(x*y)/n/(n-3) 
  return(ip)
}

### partial distance covariance ###
pdcovar <- function(x,y,z){
  Ax=u.center(x)
  Ay=u.center(y)
  Az=u.center(z)
  Pzx=Ax-inner(Ax,Az)/inner(Az,Az)*Az
  Pzy=Ay-inner(Ay,Az)/inner(Az,Az)*Az
  pdcov=inner(Pzx,Pzy)
  return(pdcov)
}

###partial distance correlation###
pdcor=function(x,y,z) {
  Ax=u.center(x)
  Ay=u.center(y)
  Az=u.center(z)
  Pzx=Ax-inner(Ax,Az)/inner(Az,Az)*Az
  Pzy=Ay-inner(Ay,Az)/inner(Az,Az)*Az
  cor=inner(Pzx,Pzy)/sqrt(inner(Pzx,Pzx)*inner(Pzy,Pzy))
  return(cor)
}
#############alternative way#########
pdcor=function(x,y,z) {
  Ax=u.center(x)
  Ay=u.center(y)
  Az=u.center(z)
  cor=(r.star(Ax,Ay)-r.star(Ax,Az)*r.star(Ay,Az))/(sqrt(1-r.star(Ax,Az)^2)*sqrt(1-r.star(Ay,Az)^2))
return(cor)
}
###########################

pMDD=function(x,y,z){
  w=cbind(x,z)
  Aw=u.center(w)
  Ax=u.center(x)
  Ay=u.center(0.5*as.matrix(dist(y))^2)
  Az=u.center(z)
  beta=inner(Ay,Az)/inner(Az,Az)
  proj=Ay-beta*Az
  pmdd=inner(proj,Aw)
  #pmdc=pmdd/sqrt(inner(proj,proj)*inner(Aw,Aw))
  #result=c(pmdd,pmdc)
  #names(result) = c("pMDD", "pMDC")
  #return(result)
  return(pmdd)
}

pMDC=function(x,y,z){
  w=cbind(x,z)
  pmdc=(MDC(w,y)-MDC(z,y)*r.star(z,w))/sqrt(1-MDC(z,y)^2)
  return(pmdc)
}