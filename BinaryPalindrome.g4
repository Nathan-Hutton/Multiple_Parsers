grammar BinaryPalindrome;

parse
  : binary_palindrome EOF
  ;

binary_palindrome
  : '1' binary_palindrome '1'
  | '0' binary_palindrome '0'
  | '0'*
  | '1'*
  ;