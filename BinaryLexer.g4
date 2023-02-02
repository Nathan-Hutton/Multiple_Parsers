grammar BinaryLexer;

input
    : one_zero EOF
    ;

one_zero
    : '0' '1'+ one_zero*
    | '1'+ one_zero*
    ;
