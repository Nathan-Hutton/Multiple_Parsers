grammar Props;

prop
    : group EOF
    ;

group
    : NAME '{' (group | key_value_pair)+ '}'
    ;

key_value_pair
    : NAME '=' value
    ;

value
    : NUMBER
    | STRING
    | POINT
    | SIZE
    | COLOR
    ;

SIZE
    : NUMBER ' '* 'x' ' '* NUMBER
    ;

POINT
    : '(' ' '* NUMBER ' ' *',' ' '* NUMBER ' '* ')'
    ;

NAME
    : [a-zA-Z_$-]+ [0-9]*
    ;

COLOR
    : '#' [0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]
    | '#' [0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]
    ;

NUMBER
    : [+-]? [0-9]+ '.' [0-9]+
    | [+-]? [0-9]+
    ;

STRING
    : '"' .*? '"'
    ;

WHITESPACE
    : [ \r\n\t]+    -> skip
    ;