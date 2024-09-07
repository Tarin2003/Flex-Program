%{
#undef yywrap
#define yywrap() 1


%}

%%

[a-zA-Z_]([a-zA-Z0-9_])* {

	printf("The given string = %s is a valid identifier\n",yytext);
}

.* {
      printf("The given string = %s is not a valid identifier\n",yytext);
}

%%
int main()
{
	printf("\nEnter a string to check if it is a valid identifier or not\n");
	yylex();
}