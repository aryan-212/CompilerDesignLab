%Start COM
%{
int c;
%}
%%
"/*" { BEGIN(COM); printf("MultiLine comment pattern is active now\n"); }
<COM>"*/" { BEGIN(INITIAL); printf("MultiLine comment pattern has ended\n"); }
.c++;
\n;
%%
int yywrap(){
    return (1);
  }
  int main(){
    return 0;
    }
