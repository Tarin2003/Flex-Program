%{
	/*To check if a given string is a word or a digit*/
#undef yywrap
#define yywrap() 1	


%}

%%



[0-9]+ {
	printf("The given string = %s is a number\n",yytext);

}

.* {
	printf("The given string = %s is not a number\n",yytext);
}

%%

	

int main()
{
	printf("\nEnter a string to check if it is a number or not\n");
	yylex();
}