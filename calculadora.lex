/* Archivo con el reconocedor l�xico para la calculadora */
%{
#include<stdlib.h>
#include<math.h>
  /* Se incluye el archivo generado por bison para tener las definiciones
     de los tokens */
#include "calculadora.tab.h"
%}

LETRA [A-Za-z]
DIGITO [0-9]

%%

{DIGITO}* {yylval = atoi(yytext); return NUM; /* Convierte el NUM a número */}
"+"       {return SUMA; /* Se encontró un símbolo de suma */}
"-"       {return RESTA;/* Se encontró un símbolo de resta */}
"*"       {return MULTI;/* Se encontró un símbolo de multiplicación */}
"/"       {return DIVIDE;/* Se encontró un símbolo de división */}
"("       {return PARENI;/* Se encontró un "(" */}
")"       {return PAREND;/* Se encontró un ")" */}
"%"       {return MODULUS;/* Se encontró un "%" */}
"'"       {return EXPONENT; /* Se encontró un "'" */}
"$"       {return FINEXP;/* Se encontró un $, que es símbolo de fin de expr */}

%%
