
%{
  int i = 0;  // Initialize i
%}

%%
aaa { printf("aaa matched\n"); }  // Rule to print "Gayathri" and increment i
// 'aaa' is the regex that if matched executes the value
%%

int yywrap() {
  return 1;
}

int main() {
  yylex();  // Process the input
  printf("Value of i is %d\n", i);  // Output the value of i
  return 0;
}

