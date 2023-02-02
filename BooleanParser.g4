grammar BooleanParser;

boolean_expression
    : (BOOLEAN | NAME)
    | '(' boolean_expression ')'
    | '!' boolean_expression
    | boolean_expression '||' boolean_expression
    | boolean_expression '&&' boolean_expression
    | boolean_expression '^' boolean_expression
    | boolean_expression '|' boolean_expression
    | boolean_expression '&' boolean_expression
    ;

BOOLEAN
    : 'true'
    | 'false'
    ;

NAME
    : [a-zA-Z_$]+ [0-9]* [a-zA-Z_$]*
    ;

WHITESPACE
    : [ \r\n\t]+    -> skip
    ;