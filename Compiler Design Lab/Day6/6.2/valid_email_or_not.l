/*lex code to accept a  valid email */ 
%{
#include<stdio.h>

%}
char [a-z0-9_]{7}
Domain [@][a-z]+".com"


%%
{char}{Domain} {printf("\nvalid email\n");};
.* {printf("\nnot valid email\n");};
%%
int main(){

printf("\nenter email:\n");
yylex();
printf("\n");

}
int yywrap(void){
return 0;
}