%{
	
#undef yywrap
#define yywrap() 1	
%}


%%

[a-zA-Z]+ {

	printf("The given string = %s  is a word\n",yytext);
}

[0-9]+ {
	
         printf("The given string = %s  is a digit\n",yytext);
}

.* {
	printf("The given string = %s  is everything\n",yytext);
}

%%

int main()
{
	printf("\nEnter a string to check if it is a digit or a word \n");
	yylex();
}