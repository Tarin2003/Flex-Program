%{
#undef yywrap
#define yywrap() 1
	
%}

%%

[a|e|i|o|u] {
		printf("The given letter = %s is a vowel\n",yytext);
		}

.* {
	printf("The given letter = %s is not a vowel\n",yytext);
	}
	
%%
int main()
{
	printf("\nEnter a letter to check if it is a vowel or not\n");
	yylex(); 
}