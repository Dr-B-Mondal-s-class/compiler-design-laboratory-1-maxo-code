%{
 int count=0;	
%}

%% 
. {count++;}
\n {return 0;}
%%
main()
{
	yylex();
	printf(" number of character entered:%d",count);
}
yywrap(void)
{
	return 0;
}
