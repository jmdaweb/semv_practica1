int factorial(int num){
if (num==1){
return num;
}else{
return num*factorial(num-1);
}
}
void main(int argc){
int fact;
fact=5;
int resultado;
resultado=factorial(fact);
}
