int factorial(int num){
if (num==1) then {
return num;
}else{
int param;
param = num - 1;
return num*factorial(param);
}
}
void main(int argc){
int fact;
fact=5;
int resultado;
resultado=factorial(fact);
}
