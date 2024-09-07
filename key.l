%{
	
#undef yywrap
#define yywrap() 1	
void display(char[],int);
int flag=0;
             
%}

%%
if|else|return|break|while|for|do|switch|main {
printf("The given string = %s is a keyword\n",yytext);
}

[a-zA-Z_]([a-zA-Z0-9_])* {
      printf("The given string = %s is a valid identifier\n",yytext);

}

 




 
[0-9]* {
     printf("The given string = %s is a digit\n",yytext);
}


.* {
	printf("The given string %s is not a keyword, valid identifier or digit\n",yytext);
}


%%
	

int main()
{
	printf("\nEnter a string\n");
	yylex();
}