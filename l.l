%{
#undef yywrap
#define yywrap() 1
void display();
%}
%%
 display();
%%
void display(){
printf("Hello world\n");
}
 main()
{
	yylex(); //calling the rules section
}
%{