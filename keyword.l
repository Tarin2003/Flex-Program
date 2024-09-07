%{
	
#undef yywrap
#define yywrap() 1	
%}

%%

if|else|return|break|while|for|do|switch|main {
	printf("The given string '%s' is  a keyword\n",yytext);

}

.* {
	printf("The given string '%s' is not a keyword\n",yytext);
}

%%	
int main()
{
	printf("\nEnter a string to check if it is a keyword or not\n");
	yylex();
}