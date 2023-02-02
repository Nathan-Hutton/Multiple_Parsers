grammar DoubleParser;

input
    : ('double' | 'int') declaration_option (','declaration_option)* ';' EOF
    ;

declaration_option
    : NAME
    | name_initialization
//    : NAME (',' declaration_option)*
//    | name_initialization (',' declaration_option)*
    ;

name_initialization
    : NAME '=' (NUMBER | NAME)
    ;

NAME
    : [a-zA-Z_$]+ [0-9]* [a-zA-Z_$]*
    ;

NUMBER
    : [0-9]+
    | [0-9]+ '.' [0-9]+
    ;

WHITESPACE
    : [ \r\n\t]+    -> skip
    ;