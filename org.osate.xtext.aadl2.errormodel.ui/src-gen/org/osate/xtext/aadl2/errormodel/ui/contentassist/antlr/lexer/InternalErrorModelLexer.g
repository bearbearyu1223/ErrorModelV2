
/*
* generated by Xtext
*/
lexer grammar InternalErrorModelLexer;


@header {
package org.osate.xtext.aadl2.errormodel.ui.contentassist.antlr.lexer;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}




KEYWORD_85 : ('T'|'t')('R'|'r')('A'|'a')('N'|'n')('S'|'s')('F'|'f')('O'|'o')('R'|'r')('M'|'m')('A'|'a')('T'|'t')('I'|'i')('O'|'o')('N'|'n')('S'|'s');

KEYWORD_84 : ('P'|'p')('R'|'r')('O'|'o')('P'|'p')('A'|'a')('G'|'g')('A'|'a')('T'|'t')('I'|'i')('O'|'o')('N'|'n')('S'|'s');

KEYWORD_81 : ('C'|'c')('O'|'o')('N'|'n')('N'|'n')('E'|'e')('C'|'c')('T'|'t')('I'|'i')('O'|'o')('N'|'n')('S'|'s');

KEYWORD_82 : ('P'|'p')('R'|'r')('O'|'o')('P'|'p')('A'|'a')('G'|'g')('A'|'a')('T'|'t')('I'|'i')('O'|'o')('N'|'n');

KEYWORD_83 : ('T'|'t')('R'|'r')('A'|'a')('N'|'n')('S'|'s')('I'|'i')('T'|'t')('I'|'i')('O'|'o')('N'|'n')('S'|'s');

KEYWORD_77 : ('C'|'c')('L'|'l')('A'|'a')('S'|'s')('S'|'s')('I'|'i')('F'|'f')('I'|'i')('E'|'e')('R'|'r');

KEYWORD_78 : ('C'|'c')('O'|'o')('N'|'n')('N'|'n')('E'|'e')('C'|'c')('T'|'t')('I'|'i')('O'|'o')('N'|'n');

KEYWORD_79 : ('D'|'d')('E'|'e')('T'|'t')('E'|'e')('C'|'c')('T'|'t')('I'|'i')('O'|'o')('N'|'n')('S'|'s');

KEYWORD_80 : ('P'|'p')('R'|'r')('O'|'o')('P'|'p')('E'|'e')('R'|'r')('T'|'t')('I'|'i')('E'|'e')('S'|'s');

KEYWORD_73 : ('C'|'c')('O'|'o')('M'|'m')('P'|'p')('O'|'o')('N'|'n')('E'|'e')('N'|'n')('T'|'t');

KEYWORD_74 : ('C'|'c')('O'|'o')('M'|'m')('P'|'p')('O'|'o')('S'|'s')('I'|'i')('T'|'t')('E'|'e');

KEYWORD_75 : ('P'|'p')('R'|'r')('O'|'o')('C'|'c')('E'|'e')('S'|'s')('S'|'s')('O'|'o')('R'|'r');

KEYWORD_76 : ('R'|'r')('E'|'e')('F'|'f')('E'|'e')('R'|'r')('E'|'e')('N'|'n')('C'|'c')('E'|'e');

KEYWORD_69 : ('B'|'b')('E'|'e')('H'|'h')('A'|'a')('V'|'v')('I'|'i')('O'|'o')('R'|'r');

KEYWORD_70 : ('B'|'b')('I'|'i')('N'|'n')('D'|'d')('I'|'i')('N'|'n')('G'|'g')('S'|'s');

KEYWORD_71 : ('C'|'c')('O'|'o')('N'|'n')('S'|'s')('T'|'t')('A'|'a')('N'|'n')('T'|'t');

KEYWORD_72 : ('M'|'m')('A'|'a')('P'|'p')('P'|'p')('I'|'i')('N'|'n')('G'|'g')('S'|'s');

KEYWORD_60 : ('A'|'a')('P'|'p')('P'|'p')('L'|'l')('I'|'i')('E'|'e')('S'|'s');

KEYWORD_61 : ('B'|'b')('I'|'i')('N'|'n')('D'|'d')('I'|'i')('N'|'n')('G'|'g');

KEYWORD_62 : ('C'|'c')('O'|'o')('M'|'m')('P'|'p')('U'|'u')('T'|'t')('E'|'e');

KEYWORD_63 : ('E'|'e')('X'|'x')('T'|'t')('E'|'e')('N'|'n')('D'|'d')('S'|'s');

KEYWORD_64 : ('I'|'i')('N'|'n')('I'|'i')('T'|'t')('I'|'i')('A'|'a')('L'|'l');

KEYWORD_65 : ('L'|'l')('I'|'i')('B'|'b')('R'|'r')('A'|'a')('R'|'r')('Y'|'y');

KEYWORD_66 : ('N'|'n')('O'|'o')('E'|'e')('R'|'r')('R'|'r')('O'|'o')('R'|'r');

KEYWORD_67 : ('R'|'r')('E'|'e')('C'|'c')('O'|'o')('V'|'v')('E'|'e')('R'|'r');

KEYWORD_68 : ('R'|'r')('E'|'e')('N'|'n')('A'|'a')('M'|'m')('E'|'e')('S'|'s');

KEYWORD_51 : ('A'|'a')('C'|'c')('C'|'c')('E'|'e')('S'|'s')('S'|'s');

KEYWORD_52 : ('E'|'e')('V'|'v')('E'|'e')('N'|'n')('T'|'t')('S'|'s');

KEYWORD_53 : ('M'|'m')('E'|'e')('M'|'m')('O'|'o')('R'|'r')('Y'|'y');

KEYWORD_54 : ('O'|'o')('R'|'r')('L'|'l')('E'|'e')('S'|'s')('S'|'s');

KEYWORD_55 : ('O'|'o')('R'|'r')('M'|'m')('O'|'o')('R'|'r')('E'|'e');

KEYWORD_56 : ('O'|'o')('T'|'t')('H'|'h')('E'|'e')('R'|'r')('S'|'s');

KEYWORD_57 : ('R'|'r')('E'|'e')('P'|'p')('A'|'a')('I'|'i')('R'|'r');

KEYWORD_58 : ('S'|'s')('O'|'o')('U'|'u')('R'|'r')('C'|'c')('E'|'e');

KEYWORD_59 : ('S'|'s')('T'|'t')('A'|'a')('T'|'t')('E'|'e')('S'|'s');

KEYWORD_41 : ('D'|'d')('E'|'e')('L'|'l')('T'|'t')('A'|'a');

KEYWORD_42 : ('E'|'e')('R'|'r')('R'|'r')('O'|'o')('R'|'r');

KEYWORD_43 : ('E'|'e')('V'|'v')('E'|'e')('N'|'n')('T'|'t');

KEYWORD_44 : ('F'|'f')('A'|'a')('L'|'l')('S'|'s')('E'|'e');

KEYWORD_45 : ('F'|'f')('L'|'l')('O'|'o')('W'|'w')('S'|'s');

KEYWORD_46 : ('M'|'m')('O'|'o')('D'|'d')('E'|'e')('S'|'s');

KEYWORD_47 : ('P'|'p')('A'|'a')('T'|'t')('H'|'h')('S'|'s');

KEYWORD_48 : ('P'|'p')('O'|'o')('I'|'i')('N'|'n')('T'|'t');

KEYWORD_49 : ('S'|'s')('T'|'t')('A'|'a')('T'|'t')('E'|'e');

KEYWORD_50 : ('T'|'t')('Y'|'y')('P'|'p')('E'|'e')('S'|'s');

KEYWORD_32 : ('M'|'m')('O'|'o')('D'|'d')('E'|'e');

KEYWORD_33 : ('P'|'p')('A'|'a')('T'|'t')('H'|'h');

KEYWORD_34 : ('S'|'s')('A'|'a')('M'|'m')('E'|'e');

KEYWORD_35 : ('S'|'s')('E'|'e')('L'|'l')('F'|'f');

KEYWORD_36 : ('S'|'s')('I'|'i')('N'|'n')('K'|'k');

KEYWORD_37 : ('T'|'t')('R'|'r')('U'|'u')('E'|'e');

KEYWORD_38 : ('T'|'t')('Y'|'y')('P'|'p')('E'|'e');

KEYWORD_39 : ('W'|'w')('H'|'h')('E'|'e')('N'|'n');

KEYWORD_40 : ('W'|'w')('I'|'i')('T'|'t')('H'|'h');

KEYWORD_23 : '+''=''>';

KEYWORD_24 : ']''-''>';

KEYWORD_25 : ('A'|'a')('L'|'l')('L'|'l');

KEYWORD_26 : ('A'|'a')('N'|'n')('D'|'d');

KEYWORD_27 : ('E'|'e')('N'|'n')('D'|'d');

KEYWORD_28 : ('N'|'n')('O'|'o')('T'|'t');

KEYWORD_29 : ('O'|'o')('U'|'u')('T'|'t');

KEYWORD_30 : ('S'|'s')('E'|'e')('T'|'t');

KEYWORD_31 : ('U'|'u')('S'|'s')('E'|'e');

KEYWORD_15 : '-''>';

KEYWORD_16 : '-''[';

KEYWORD_17 : '.''.';

KEYWORD_18 : ':'':';

KEYWORD_19 : '=''>';

KEYWORD_20 : ('I'|'i')('N'|'n');

KEYWORD_21 : ('O'|'o')('R'|'r');

KEYWORD_22 : ('T'|'t')('O'|'o');

KEYWORD_1 : '!';

KEYWORD_2 : '(';

KEYWORD_3 : ')';

KEYWORD_4 : '*';

KEYWORD_5 : '+';

KEYWORD_6 : ',';

KEYWORD_7 : '-';

KEYWORD_8 : '.';

KEYWORD_9 : ':';

KEYWORD_10 : ';';

KEYWORD_11 : '[';

KEYWORD_12 : ']';

KEYWORD_13 : '{';

KEYWORD_14 : '}';



RULE_SL_COMMENT : '--' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_INTEGER_LIT : ('0'..'9')+;

fragment RULE_EXPONENT : ('e'|'E') ('+'|'-')? RULE_DIGIT+;

fragment RULE_INT_EXPONENT : ('e'|'E') '+'? RULE_DIGIT+;

RULE_REAL_LIT : RULE_DIGIT+ ('_' RULE_DIGIT+)* '.' RULE_DIGIT+ ('_' RULE_DIGIT+)* RULE_EXPONENT?;

fragment RULE_DIGIT : '0'..'9';

fragment RULE_EXTENDED_DIGIT : ('0'..'9'|'a'..'f'|'A'..'F');

fragment RULE_BASED_INTEGER : RULE_EXTENDED_DIGIT ('_'? RULE_EXTENDED_DIGIT)*;

RULE_ANNEXTEXT : '{**' ( options {greedy=false;} : . )*'**}';

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ID : ('a'..'z'|'A'..'Z') ('_'? ('a'..'z'|'A'..'Z'|'0'..'9'))*;

RULE_WS : (' '|'\t'|'\r'|'\n')+;



