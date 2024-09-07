%{
#undef yywrap
#define yywrap() 1	


%}
%%

"/*"[a-zA-Z0-9\n\t ]*"*/" {
          
 }


%%

int main()
{
 printf("\nThis program is a flex program to remove the comments (if any) in a string\n");

yylex();

}