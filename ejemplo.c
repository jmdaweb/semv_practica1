void main(){
int fact;
fact=5;
int resultado;
resultado=factorial(fact);
}
int factorial(int num){
if (num==1){
return num;
}else{
return num*factorial(num-1);
}
}
