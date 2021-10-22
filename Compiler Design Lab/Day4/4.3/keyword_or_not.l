%{
	//write a lex code to check input is valid keyword or not
	#include<stdio.h>
%}

keyword auto|break|case|char|const|continue|default|bool|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while] 

%%
{keyword} {printf("Keyword\n");}
.* {printf("Not a keyword\n");}
%%

main()
{
	yylex();
}
yywrap(void)
{
	return 0;
}
