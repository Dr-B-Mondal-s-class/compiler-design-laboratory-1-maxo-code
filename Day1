%{
    //program to detect whether the character
    //inout is a digit or alphabet
%}
WS [\t]+
letter [A-Za-z]
digit [0-9]
op_plus "+"
%%
[0-9]+ {printf("digit");}
[A-Za-z]+ {printf("Alpha");}
%%
int main(){
    yylex();
}
int yywrap(void){
    return 0;
}
