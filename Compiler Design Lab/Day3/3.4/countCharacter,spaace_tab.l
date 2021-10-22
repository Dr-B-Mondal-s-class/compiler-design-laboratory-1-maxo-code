%{
    //program to print characters, tabs and whitespaces count
    //in a string
    # include <stdio.h>
    int ch=0,sp=0,tab=0;
%}

%%
([ ])+ sp++;
\t tab++;
. ch++;
\n {
    printf("Characters Count: %d\n",ch);
    printf("Tabs Count: %d\n",tab);
    printf("Whitespaces Count: %d\n",sp);
    ch =0, sp=0, tab=0;
}
%%
int main(){
    yylex();
    return 0;
}

int yywrap(void){
    return 0;
}
