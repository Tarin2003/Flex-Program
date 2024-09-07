%{
	
#undef yywrap
#define yywrap() 1	
             
%}

%%

 if|else|return|break|while|for|do|switch|main {
	printf("The given string = %s  is  a keyword\n",yytext);

         }
 
[0-9]* {
     printf("The given string %s is a digit\n",yytext);
}
[a-zA-Z_]([a-zA-Z0-9_])* {
        
	printf("The given string %s is a valid identifier\n",yytext);
         
}

.* {
	printf("The given string =  %s  is not a keyword\n",yytext);
}


%%
	

int main()
{
	printf("Enter a string\n");
	yylex();
}