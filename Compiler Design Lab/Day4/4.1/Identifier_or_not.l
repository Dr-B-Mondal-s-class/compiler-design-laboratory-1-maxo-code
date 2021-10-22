%{
	// valid identifier or not
	//27/8/2021
%}

identifiers [a-zA-Z_][a-zA-Z0-9_]*

%%
{identifiers}   {printf(" valid identifier\n");} 
.+ {printf("Not a valid identifier\n");};
%%

int main(){
    yylex();
}

int yywrap(void) {
  return 0;
}
