%{
    //sample yacc file to check whether the input string is a pallindrome or not
    //parser part
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    extern int yylex();
    void yyerror(char*);
    int flag;
%}

%union{
    char* f;
}

%token <f> STR
%type <f> E

%%
S:E {
    flag=0;
    int k= strlen($1) - 1;
    if(k%2==0)
    {
        for(int i=0;i<=k/2;i++)
        {
            if($1[i] == $1[k-i])
            {
                flag=1;
            }
            else
            {
                flag=0;
                break;
            }
        }
    }
    else
    {
        for(int i=0;i<=k/2;i++)
        {
            if($1[i] == $1[k-i])
            {
                flag=1;
            }
            else
            {
                flag=0;
                break;
            }
        }
    }
    if(flag==1)
        printf("Input string is pallindrome : ");
    else
        printf("Input string is not pallindrome : ");
    printf("%s\n", $1);
    exit(0);
}
;
E:STR{
    $$ = $1;
}
;
%%

void yyerror(char* err)
{
    fprintf(stderr, "%s\n", err);
    exit(1);
}

int main()
{
    yyparse();
    return 0;
}