%{
#undef yywrap
#define yywrap() 1	


%}

%%
"/*"[a-zA-Z0-9\n\t ]*"*/" {
     printf("The given string '%s' is a multi-line comment\n",yytext);   
 }

"//"[a-zA-Z0-9\t ]* {
    printf("The given string '%s' is a single-line comment\n",yytext);  
}

.* {
printf("The given string '%s' is not a comment\n",yytext);  
}

%%
int main()
{
printf("\nEnter a string to check if it is a comment or not\n");  
yylex();

}