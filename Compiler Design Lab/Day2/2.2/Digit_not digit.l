%{
// macros of c program
%}

digit[0-9]
notADigit[A-Za-z0-o9*&#\/]+

%%
{digit} {printf("digit");}
{notADigit} {printf("not digit");}
%%

int main() {
    yylex();
}

int yywrap(void) {
    return 0;
}