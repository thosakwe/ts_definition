grammar TsInterface;

@header {
part of ts_definition.src.grammar;
}

WS: [ \n\r\t]+ -> skip;

SINGLE_LINE_COMMENT: '//' ~('\n')*;
MULTI_LINE_COMMENT: '/*' .*? '*/';

QUESTION: '?';

// TODO: Proper parsing of scientific notation
NUM: '-'? [0-9]+ ('.' [0-9]+)? (('e'|'E') '-'? [0-9]+)?;
fragment DQ_ESCAPED: '\\"' | '\\r' | '\\n';
fragment DQ_STRING: '"' (DQ_ESCAPED | ~('\n'|'\r'))*? '"';
fragment SQ_ESCAPED: '\\\'' | '\\r' | '\\n';
fragment SQ_STRING: '\'' (SQ_ESCAPED | ~('\n'|'\r'))*? '\'';
STRING: SQ_STRING | DQ_STRING;
ID: [A-Za-z_] [A-Za-z0-9_]*;

OTHER: . -> skip;

compilationUnit: (interfaceDecl | exportNamespaceDecl |.)*?;

comment: SINGLE_LINE_COMMENT | MULTI_LINE_COMMENT;

type:
    ID #SimpleType
    | type '[' ']' #ArrayType
    | '{' ((keyTypePair ',')* keyTypePair ','*)* '}' #ObjectType
    | type '|' type #UnionType
;

keyTypePair: comment* ID (':' type)?;

interfaceDecl: comment* 'interface' ID '{' (interfaceField ';'*)* '}';
interfaceField: comment* ID QUESTION? ':' type;

exportNamespaceDecl: comment* 'export'? 'namespace' ID '{' (namespaceField ';')* '}';
namespaceField: comment* 'export'? 'const'? ID (':' type)? ('=' expr)?;

expr:
  ID #IdExpr
  | NUM #NumExpr
  | ('true' | 'false') #BoolExpr
  | 'null' #NullExpr
  | STRING #StringExpr
  | '[' ((expr ',')* expr ','*)? ']' #ArrayExpr
  | '(' expr ')' #ParenthesizedExpr
;