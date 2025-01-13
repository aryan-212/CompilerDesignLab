
%{
  int i = 0;  // Initialize i
%}

%%
aaa { printf("aaa matched\n"); }  // Rule to print "Gayathri"
p* { printf("\n The text matched is %s and the length is %d\n", yytext,yyleng);}
%%

int yywrap() {
  return 1;
}

int main() {
  yylex();  // Process the input
  printf("Value of i is %d\n", i);  // Output the value of i
  return 0;
}

