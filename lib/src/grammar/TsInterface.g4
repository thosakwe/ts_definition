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

compilationUnit: (interfaceDecl | exportNamespaceDecl | unionTypeDecl |.)*?;

comment: SINGLE_LINE_COMMENT | MULTI_LINE_COMMENT;

keyTypePair: comment* ID QUESTION? (':' type)?;

interfaceDecl: comment* 'export'? 'interface' ID ('<' ((typeArguments+=type ',')* typeArguments+=type ','*)? '>')? ('extends' parentType=type)? '{' ((interfaceField | arrayKeyInterfaceField) ';'*)* '}';
interfaceField: comment* ID QUESTION? ':' type;

// [key: string]: boolean | number | string;
// Impossible within Dart unless you... Alias the entire type into Map...
arrayKeyInterfaceField: comment* '[' ID ':' keyType=type ']' ':' valueType=type;

exportNamespaceDecl: comment* 'export'? 'namespace' ID '{' (namespaceField ';')* '}';
namespaceField: comment* 'export'? 'const'? ID (':' type)? ('=' expr)?;

unionTypeDecl: 'export'? ID name=ID '=' type;

expr:
  ID #IdExpr
  | NUM #NumExpr
  | ('true' | 'false') #BoolExpr
  | 'null' #NullExpr
  | STRING #StringExpr
  | '[' ((expr ',')* expr ','*)? ']' #ArrayExpr
  | '(' expr ')' #ParenthesizedExpr
;

type:
    ID #SimpleType
    | expr #ExprType
    | type '[' ']' #ArrayType
    | '{' (((keyTypePair | arrayKeyInterfaceField) ';')* (keyTypePair | arrayKeyInterfaceField) ';'*)* '}' #ObjectType
    | type '|' type #UnionType
    | ('null'|NUM|STRING) #LiteralType
    | target=type '<' ((arguments+=type ',')* arguments+=type ','*)? '>' #GenericType
;