// Generated from TsInterface.g4 by antlr4dart

part of ts_definition.src.grammar;


class TsInterfaceParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_COMPILATIONUNIT = 0, RULE_COMMENT = 1, RULE_TYPE = 2, 
                   RULE_KEYTYPEPAIR = 3, RULE_INTERFACEDECL = 4, RULE_INTERFACEFIELD = 5, 
                   RULE_EXPORTNAMESPACEDECL = 6, RULE_NAMESPACEFIELD = 7, 
                   RULE_EXPR = 8;

  static const int T__19 = 1, T__18 = 2, T__17 = 3, T__16 = 4, T__15 = 5, 
                   T__14 = 6, T__13 = 7, T__12 = 8, T__11 = 9, T__10 = 10, 
                   T__9 = 11, T__8 = 12, T__7 = 13, T__6 = 14, T__5 = 15, 
                   T__4 = 16, T__3 = 17, T__2 = 18, T__1 = 19, T__0 = 20, 
                   WS = 21, SINGLE_LINE_COMMENT = 22, MULTI_LINE_COMMENT = 23, 
                   QUESTION = 24, NUM = 25, STRING = 26, ID = 27, OTHER = 28;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x1e\xd4\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x04\x06\x09\x06\x04\x07\x09\x07\x04\x08\x09"
  	"\x08\x04\x09\x09\x09\x04\x0a\x09\x0a\x03\x02\x03\x02\x03\x02\x07\x02"
  	"\x18\x0a\x02\x0c\x02\x0e\x02\x1b\x0b\x02\x03\x03\x03\x03\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x03\x04\x07\x04\x25\x0a\x04\x0c\x04\x0e"
  	"\x04\x28\x0b\x04\x03\x04\x03\x04\x07\x04\x2c\x0a\x04\x0c\x04\x0e\x04"
  	"\x2f\x0b\x04\x07\x04\x31\x0a\x04\x0c\x04\x0e\x04\x34\x0b\x04\x03\x04"
  	"\x03\x04\x05\x04\x38\x0a\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04"
  	"\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x03\x04\x07\x04\x45\x0a\x04"
  	"\x0c\x04\x0e\x04\x48\x0b\x04\x03\x04\x03\x04\x07\x04\x4c\x0a\x04\x0c"
  	"\x04\x0e\x04\x4f\x0b\x04\x05\x04\x51\x0a\x04\x03\x04\x07\x04\x54\x0a"
  	"\x04\x0c\x04\x0e\x04\x57\x0b\x04\x03\x05\x07\x05\x5a\x0a\x05\x0c\x05"
  	"\x0e\x05\x5d\x0b\x05\x03\x05\x03\x05\x03\x05\x05\x05\x62\x0a\x05\x03"
  	"\x06\x07\x06\x65\x0a\x06\x0c\x06\x0e\x06\x68\x0b\x06\x03\x06\x05\x06"
  	"\x6b\x0a\x06\x03\x06\x03\x06\x03\x06\x03\x06\x03\x06\x07\x06\x72\x0a"
  	"\x06\x0c\x06\x0e\x06\x75\x0b\x06\x07\x06\x77\x0a\x06\x0c\x06\x0e\x06"
  	"\x7a\x0b\x06\x03\x06\x03\x06\x03\x07\x07\x07\x7f\x0a\x07\x0c\x07\x0e"
  	"\x07\x82\x0b\x07\x03\x07\x03\x07\x05\x07\x86\x0a\x07\x03\x07\x03\x07"
  	"\x03\x07\x03\x08\x07\x08\x8c\x0a\x08\x0c\x08\x0e\x08\x8f\x0b\x08\x03"
  	"\x08\x05\x08\x92\x0a\x08\x03\x08\x03\x08\x03\x08\x03\x08\x03\x08\x03"
  	"\x08\x07\x08\x9a\x0a\x08\x0c\x08\x0e\x08\x9d\x0b\x08\x03\x08\x03\x08"
  	"\x03\x09\x07\x09\xa2\x0a\x09\x0c\x09\x0e\x09\xa5\x0b\x09\x03\x09\x05"
  	"\x09\xa8\x0a\x09\x03\x09\x05\x09\xab\x0a\x09\x03\x09\x03\x09\x03\x09"
  	"\x05\x09\xb0\x0a\x09\x03\x09\x03\x09\x05\x09\xb4\x0a\x09\x03\x0a\x03"
  	"\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x07\x0a"
  	"\xbf\x0a\x0a\x0c\x0a\x0e\x0a\xc2\x0b\x0a\x03\x0a\x03\x0a\x07\x0a\xc6"
  	"\x0a\x0a\x0c\x0a\x0e\x0a\xc9\x0b\x0a\x05\x0a\xcb\x0a\x0a\x03\x0a\x03"
  	"\x0a\x03\x0a\x03\x0a\x03\x0a\x05\x0a\xd2\x0a\x0a\x03\x0a\x03\x19\x03"
  	"\x06\x0b\x02\x04\x06\x08\x0a\x0c\x0e\x10\x12\x02\x05\x03\x02\x18\x19"
  	"\x04\x02\x12\x12\x1b\x1c\x04\x02\x05\x05\x16\x16\xf1\x02\x19\x03\x02"
  	"\x02\x02\x04\x1c\x03\x02\x02\x02\x06\x37\x03\x02\x02\x02\x08\x5b\x03"
  	"\x02\x02\x02\x0a\x66\x03\x02\x02\x02\x0c\x80\x03\x02\x02\x02\x0e\x8d"
  	"\x03\x02\x02\x02\x10\xa3\x03\x02\x02\x02\x12\xd1\x03\x02\x02\x02\x14"
  	"\x18\x05\x0a\x06\x02\x15\x18\x05\x0e\x08\x02\x16\x18\x0b\x02\x02\x02"
  	"\x17\x14\x03\x02\x02\x02\x17\x15\x03\x02\x02\x02\x17\x16\x03\x02\x02"
  	"\x02\x18\x1b\x03\x02\x02\x02\x19\x1a\x03\x02\x02\x02\x19\x17\x03\x02"
  	"\x02\x02\x1a\x03\x03\x02\x02\x02\x1b\x19\x03\x02\x02\x02\x1c\x1d\x09"
  	"\x02\x02\x02\x1d\x05\x03\x02\x02\x02\x1e\x1f\x08\x04\x01\x02\x1f\x38"
  	"\x07\x1d\x02\x02\x20\x32\x07\x08\x02\x02\x21\x22\x05\x08\x05\x02\x22"
  	"\x23\x07\x15\x02\x02\x23\x25\x03\x02\x02\x02\x24\x21\x03\x02\x02\x02"
  	"\x25\x28\x03\x02\x02\x02\x26\x24\x03\x02\x02\x02\x26\x27\x03\x02\x02"
  	"\x02\x27\x29\x03\x02\x02\x02\x28\x26\x03\x02\x02\x02\x29\x2d\x05\x08"
  	"\x05\x02\x2a\x2c\x07\x15\x02\x02\x2b\x2a\x03\x02\x02\x02\x2c\x2f\x03"
  	"\x02\x02\x02\x2d\x2b\x03\x02\x02\x02\x2d\x2e\x03\x02\x02\x02\x2e\x31"
  	"\x03\x02\x02\x02\x2f\x2d\x03\x02\x02\x02\x30\x26\x03\x02\x02\x02\x31"
  	"\x34\x03\x02\x02\x02\x32\x30\x03\x02\x02\x02\x32\x33\x03\x02\x02\x02"
  	"\x33\x35\x03\x02\x02\x02\x34\x32\x03\x02\x02\x02\x35\x38\x07\x0d\x02"
  	"\x02\x36\x38\x09\x03\x02\x02\x37\x1e\x03\x02\x02\x02\x37\x20\x03\x02"
  	"\x02\x02\x37\x36\x03\x02\x02\x02\x38\x55\x03\x02\x02\x02\x39\x3a\x0c"
  	"\x05\x02\x02\x3a\x3b\x07\x0b\x02\x02\x3b\x54\x05\x06\x04\x06\x3c\x3d"
  	"\x0c\x07\x02\x02\x3d\x3e\x07\x09\x02\x02\x3e\x54\x07\x0e\x02\x02\x3f"
  	"\x40\x0c\x03\x02\x02\x40\x50\x07\x0a\x02\x02\x41\x42\x05\x06\x04\x02"
  	"\x42\x43\x07\x15\x02\x02\x43\x45\x03\x02\x02\x02\x44\x41\x03\x02\x02"
  	"\x02\x45\x48\x03\x02\x02\x02\x46\x44\x03\x02\x02\x02\x46\x47\x03\x02"
  	"\x02\x02\x47\x49\x03\x02\x02\x02\x48\x46\x03\x02\x02\x02\x49\x4d\x05"
  	"\x06\x04\x02\x4a\x4c\x07\x15\x02\x02\x4b\x4a\x03\x02\x02\x02\x4c\x4f"
  	"\x03\x02\x02\x02\x4d\x4b\x03\x02\x02\x02\x4d\x4e\x03\x02\x02\x02\x4e"
  	"\x51\x03\x02\x02\x02\x4f\x4d\x03\x02\x02\x02\x50\x46\x03\x02\x02\x02"
  	"\x50\x51\x03\x02\x02\x02\x51\x52\x03\x02\x02\x02\x52\x54\x07\x0f\x02"
  	"\x02\x53\x39\x03\x02\x02\x02\x53\x3c\x03\x02\x02\x02\x53\x3f\x03\x02"
  	"\x02\x02\x54\x57\x03\x02\x02\x02\x55\x53\x03\x02\x02\x02\x55\x56\x03"
  	"\x02\x02\x02\x56\x07\x03\x02\x02\x02\x57\x55\x03\x02\x02\x02\x58\x5a"
  	"\x05\x04\x03\x02\x59\x58\x03\x02\x02\x02\x5a\x5d\x03\x02\x02\x02\x5b"
  	"\x59\x03\x02\x02\x02\x5b\x5c\x03\x02\x02\x02\x5c\x5e\x03\x02\x02\x02"
  	"\x5d\x5b\x03\x02\x02\x02\x5e\x61\x07\x1d\x02\x02\x5f\x60\x07\x06\x02"
  	"\x02\x60\x62\x05\x06\x04\x02\x61\x5f\x03\x02\x02\x02\x61\x62\x03\x02"
  	"\x02\x02\x62\x09\x03\x02\x02\x02\x63\x65\x05\x04\x03\x02\x64\x63\x03"
  	"\x02\x02\x02\x65\x68\x03\x02\x02\x02\x66\x64\x03\x02\x02\x02\x66\x67"
  	"\x03\x02\x02\x02\x67\x6a\x03\x02\x02\x02\x68\x66\x03\x02\x02\x02\x69"
  	"\x6b\x07\x11\x02\x02\x6a\x69\x03\x02\x02\x02\x6a\x6b\x03\x02\x02\x02"
  	"\x6b\x6c\x03\x02\x02\x02\x6c\x6d\x07\x03\x02\x02\x6d\x6e\x07\x1d\x02"
  	"\x02\x6e\x78\x07\x08\x02\x02\x6f\x73\x05\x0c\x07\x02\x70\x72\x07\x07"
  	"\x02\x02\x71\x70\x03\x02\x02\x02\x72\x75\x03\x02\x02\x02\x73\x71\x03"
  	"\x02\x02\x02\x73\x74\x03\x02\x02\x02\x74\x77\x03\x02\x02\x02\x75\x73"
  	"\x03\x02\x02\x02\x76\x6f\x03\x02\x02\x02\x77\x7a\x03\x02\x02\x02\x78"
  	"\x76\x03\x02\x02\x02\x78\x79\x03\x02\x02\x02\x79\x7b\x03\x02\x02\x02"
  	"\x7a\x78\x03\x02\x02\x02\x7b\x7c\x07\x0d\x02\x02\x7c\x0b\x03\x02\x02"
  	"\x02\x7d\x7f\x05\x04\x03\x02\x7e\x7d\x03\x02\x02\x02\x7f\x82\x03\x02"
  	"\x02\x02\x80\x7e\x03\x02\x02\x02\x80\x81\x03\x02\x02\x02\x81\x83\x03"
  	"\x02\x02\x02\x82\x80\x03\x02\x02\x02\x83\x85\x07\x1d\x02\x02\x84\x86"
  	"\x07\x1a\x02\x02\x85\x84\x03\x02\x02\x02\x85\x86\x03\x02\x02\x02\x86"
  	"\x87\x03\x02\x02\x02\x87\x88\x07\x06\x02\x02\x88\x89\x05\x06\x04\x02"
  	"\x89\x0d\x03\x02\x02\x02\x8a\x8c\x05\x04\x03\x02\x8b\x8a\x03\x02\x02"
  	"\x02\x8c\x8f\x03\x02\x02\x02\x8d\x8b\x03\x02\x02\x02\x8d\x8e\x03\x02"
  	"\x02\x02\x8e\x91\x03\x02\x02\x02\x8f\x8d\x03\x02\x02\x02\x90\x92\x07"
  	"\x11\x02\x02\x91\x90\x03\x02\x02\x02\x91\x92\x03\x02\x02\x02\x92\x93"
  	"\x03\x02\x02\x02\x93\x94\x07\x10\x02\x02\x94\x95\x07\x1d\x02\x02\x95"
  	"\x9b\x07\x08\x02\x02\x96\x97\x05\x10\x09\x02\x97\x98\x07\x07\x02\x02"
  	"\x98\x9a\x03\x02\x02\x02\x99\x96\x03\x02\x02\x02\x9a\x9d\x03\x02\x02"
  	"\x02\x9b\x99\x03\x02\x02\x02\x9b\x9c\x03\x02\x02\x02\x9c\x9e\x03\x02"
  	"\x02\x02\x9d\x9b\x03\x02\x02\x02\x9e\x9f\x07\x0d\x02\x02\x9f\x0f\x03"
  	"\x02\x02\x02\xa0\xa2\x05\x04\x03\x02\xa1\xa0\x03\x02\x02\x02\xa2\xa5"
  	"\x03\x02\x02\x02\xa3\xa1\x03\x02\x02\x02\xa3\xa4\x03\x02\x02\x02\xa4"
  	"\xa7\x03\x02\x02\x02\xa5\xa3\x03\x02\x02\x02\xa6\xa8\x07\x11\x02\x02"
  	"\xa7\xa6\x03\x02\x02\x02\xa7\xa8\x03\x02\x02\x02\xa8\xaa\x03\x02\x02"
  	"\x02\xa9\xab\x07\x04\x02\x02\xaa\xa9\x03\x02\x02\x02\xaa\xab\x03\x02"
  	"\x02\x02\xab\xac\x03\x02\x02\x02\xac\xaf\x07\x1d\x02\x02\xad\xae\x07"
  	"\x06\x02\x02\xae\xb0\x05\x06\x04\x02\xaf\xad\x03\x02\x02\x02\xaf\xb0"
  	"\x03\x02\x02\x02\xb0\xb3\x03\x02\x02\x02\xb1\xb2\x07\x0c\x02\x02\xb2"
  	"\xb4\x05\x12\x0a\x02\xb3\xb1\x03\x02\x02\x02\xb3\xb4\x03\x02\x02\x02"
  	"\xb4\x11\x03\x02\x02\x02\xb5\xd2\x07\x1d\x02\x02\xb6\xd2\x07\x1b\x02"
  	"\x02\xb7\xd2\x09\x04\x02\x02\xb8\xd2\x07\x12\x02\x02\xb9\xd2\x07\x1c"
  	"\x02\x02\xba\xca\x07\x09\x02\x02\xbb\xbc\x05\x12\x0a\x02\xbc\xbd\x07"
  	"\x15\x02\x02\xbd\xbf\x03\x02\x02\x02\xbe\xbb\x03\x02\x02\x02\xbf\xc2"
  	"\x03\x02\x02\x02\xc0\xbe\x03\x02\x02\x02\xc0\xc1\x03\x02\x02\x02\xc1"
  	"\xc3\x03\x02\x02\x02\xc2\xc0\x03\x02\x02\x02\xc3\xc7\x05\x12\x0a\x02"
  	"\xc4\xc6\x07\x15\x02\x02\xc5\xc4\x03\x02\x02\x02\xc6\xc9\x03\x02\x02"
  	"\x02\xc7\xc5\x03\x02\x02\x02\xc7\xc8\x03\x02\x02\x02\xc8\xcb\x03\x02"
  	"\x02\x02\xc9\xc7\x03\x02\x02\x02\xca\xc0\x03\x02\x02\x02\xca\xcb\x03"
  	"\x02\x02\x02\xcb\xcc\x03\x02\x02\x02\xcc\xd2\x07\x0e\x02\x02\xcd\xce"
  	"\x07\x13\x02\x02\xce\xcf\x05\x12\x0a\x02\xcf\xd0\x07\x14\x02\x02\xd0"
  	"\xd2\x03\x02\x02\x02\xd1\xb5\x03\x02\x02\x02\xd1\xb6\x03\x02\x02\x02"
  	"\xd1\xb7\x03\x02\x02\x02\xd1\xb8\x03\x02\x02\x02\xd1\xb9\x03\x02\x02"
  	"\x02\xd1\xba\x03\x02\x02\x02\xd1\xcd\x03\x02\x02\x02\xd2\x13\x03\x02"
  	"\x02\x02\x21\x17\x19\x26\x2d\x32\x37\x46\x4d\x50\x53\x55\x5b\x61\x66"
  	"\x6a\x73\x78\x80\x85\x8d\x91\x9b\xa3\xa7\xaa\xaf\xb3\xc0\xc7\xca\xd1";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'interface'", "'const'", "'true'", "':'", "';'", "'{'", 
    "'['", "'<'", "'|'", "'='", "'}'", "']'", "'>'", "'namespace'", "'export'", 
    "'null'", "'('", "')'", "','", "'false'", "WS", "SINGLE_LINE_COMMENT", 
    "MULTI_LINE_COMMENT", "'?'", "NUM", "STRING", "ID", "OTHER"
  ];

  final List<String> ruleNames = [
    "compilationUnit", "comment", "type", "keyTypePair", "interfaceDecl", 
    "interfaceField", "exportNamespaceDecl", "namespaceField", "expr"
  ];
  TsInterfaceParser(TokenSource input) : super(input) {
    var _decisionToDfa = new List<Dfa>(atn.numberOfDecisions);
    for (int i = 0; i < atn.numberOfDecisions; i++) {
      _decisionToDfa[i] = new Dfa(atn.getDecisionState(i), i);
    }
    interpreter = new ParserAtnSimulator(this, atn, _decisionToDfa, sharedContextCache);
  }

  String get serializedAtn => _serializedAtn;

  String get grammarFileName => "TsInterface.g4";
  CompilationUnitContext compilationUnit() {
    var localContext = new CompilationUnitContext(context, state);
    enterRule(localContext, 0, RULE_COMPILATIONUNIT);
    try {
      var _alt;
      enterOuterAlt(localContext, 1);
      state = 23;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 1, context);
      while (_alt != 1 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1 + 1) {
          state = 21;
          switch (interpreter.adaptivePredict(inputSource, 0, context)) {
            case 1:
              state = 18; 
              interfaceDecl();
              break;
            case 2:
              state = 19; 
              exportNamespaceDecl();
              break;
            case 3:
              state = 20;
              matchWildcard();
              break;
          } 
        }
        state = 25;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 1, context);
      }
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  CommentContext comment() {
    var localContext = new CommentContext(context, state);
    enterRule(localContext, 2, RULE_COMMENT);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 26;
      _la = inputSource.lookAhead(1);
      if (!(_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT)) {
        errorHandler.recoverInline(this);
      }
      consume();
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  TypeContext type([int _p = 0]) {
    var _parentctx = context;
    int _parentState = state;
    var localContext = new TypeContext(context, _parentState);
    var _prevctx = localContext;
    int _startState = 4;
    enterRecursionRule(localContext, 4, RULE_TYPE, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      state = 53;
      switch (inputSource.lookAhead(1)) {
        case ID: 
          localContext = new SimpleTypeContext(localContext);
          context = localContext;
          _prevctx = localContext;

          state = 29; 
          match(ID); 
          break;
        case T__14: 
          localContext = new ObjectTypeContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 30; 
          match(T__14);
          state = 48;
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
          while ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << SINGLE_LINE_COMMENT) | 
          	(BIG_ONE << MULTI_LINE_COMMENT) | (BIG_ONE << ID))) != BIG_ZERO)) {
            state = 36;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(inputSource, 2, context);
            while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
              if (_alt == 1) {
                state = 31; 
                keyTypePair();
                state = 32; 
                match(T__1); 
              }
              state = 38;
              errorHandler.sync(this);
              _alt = interpreter.adaptivePredict(inputSource, 2, context);
            }
            state = 39; 
            keyTypePair();
            state = 43;
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
            while (_la == T__1) {
              state = 40; 
              match(T__1);
              state = 45;
              errorHandler.sync(this);
              _la = inputSource.lookAhead(1);
            }
            state = 50;
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
          }
          state = 51; 
          match(T__9); 
          break;
        case T__4:
        case NUM:
        case STRING: 
          localContext = new LiteralTypeContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 52;
          _la = inputSource.lookAhead(1);
          if (!((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__4) | 
          	(BIG_ONE << NUM) | (BIG_ONE << STRING))) != BIG_ZERO))) {
            errorHandler.recoverInline(this);
          }
          consume(); 
          break;
        default: throw new NoViableAltException(this);
      }
      context.stop = inputSource.lookToken(-1);
      state = 83;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 10, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 81;
          switch (interpreter.adaptivePredict(inputSource, 9, context)) {
            case 1:
              localContext = new UnionTypeContext(new TypeContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_TYPE);
              state = 55;
              if (!(precedencePredicate(context, 3))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 3)");
              state = 56; 
              match(T__11);
              state = 57; 
              type(4);
              break;
            case 2:
              localContext = new ArrayTypeContext(new TypeContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_TYPE);
              state = 58;
              if (!(precedencePredicate(context, 5))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 5)");
              state = 59; 
              match(T__13);
              state = 60; 
              match(T__8);
              break;
            case 3:
              localContext = new GenericTypeContext(new TypeContext(_parentctx, _parentState));
              localContext.target = _prevctx;
              pushNewRecursionContext(localContext, _startState, RULE_TYPE);
              state = 61;
              if (!(precedencePredicate(context, 1))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 1)");
              state = 62; 
              match(T__12);
              state = 78;
              _la = inputSource.lookAhead(1);
              if ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__14) | 
              	(BIG_ONE << T__4) | (BIG_ONE << NUM) | (BIG_ONE << STRING) | 
              	(BIG_ONE << ID))) != BIG_ZERO)) {
                state = 68;
                errorHandler.sync(this);
                _alt = interpreter.adaptivePredict(inputSource, 6, context);
                while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
                  if (_alt == 1) {
                    state = 63; 
                    localContext.type = type(0);
                    localContext.arguments.add(localContext.type);
                    state = 64; 
                    match(T__1); 
                  }
                  state = 70;
                  errorHandler.sync(this);
                  _alt = interpreter.adaptivePredict(inputSource, 6, context);
                }
                state = 71; 
                localContext.type = type(0);
                localContext.arguments.add(localContext.type);
                state = 75;
                errorHandler.sync(this);
                _la = inputSource.lookAhead(1);
                while (_la == T__1) {
                  state = 72; 
                  match(T__1);
                  state = 77;
                  errorHandler.sync(this);
                  _la = inputSource.lookAhead(1);
                }
              }
              state = 80; 
              match(T__7);
              break;
          } 
        }
        state = 85;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 10, context);
      }
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
  	errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return localContext;
  }
  KeyTypePairContext keyTypePair() {
    var localContext = new KeyTypePairContext(context, state);
    enterRule(localContext, 6, RULE_KEYTYPEPAIR);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 89;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 86; 
        comment();
        state = 91;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 92; 
      match(ID);
      state = 95;
      _la = inputSource.lookAhead(1);
      if (_la == T__16) {
        state = 93; 
        match(T__16);
        state = 94; 
        type(0);
      }
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  InterfaceDeclContext interfaceDecl() {
    var localContext = new InterfaceDeclContext(context, state);
    enterRule(localContext, 8, RULE_INTERFACEDECL);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 100;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 97; 
        comment();
        state = 102;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 104;
      _la = inputSource.lookAhead(1);
      if (_la == T__5) {
        state = 103; 
        match(T__5);
      }
      state = 106; 
      match(T__19);
      state = 107; 
      match(ID);
      state = 108; 
      match(T__14);
      state = 118;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << SINGLE_LINE_COMMENT) | 
      	(BIG_ONE << MULTI_LINE_COMMENT) | (BIG_ONE << ID))) != BIG_ZERO)) {
        state = 109; 
        interfaceField();
        state = 113;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
        while (_la == T__15) {
          state = 110; 
          match(T__15);
          state = 115;
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
        }
        state = 120;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 121; 
      match(T__9);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  InterfaceFieldContext interfaceField() {
    var localContext = new InterfaceFieldContext(context, state);
    enterRule(localContext, 10, RULE_INTERFACEFIELD);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 126;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 123; 
        comment();
        state = 128;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 129; 
      match(ID);
      state = 131;
      _la = inputSource.lookAhead(1);
      if (_la == QUESTION) {
        state = 130; 
        match(QUESTION);
      }
      state = 133; 
      match(T__16);
      state = 134; 
      type(0);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  ExportNamespaceDeclContext exportNamespaceDecl() {
    var localContext = new ExportNamespaceDeclContext(context, state);
    enterRule(localContext, 12, RULE_EXPORTNAMESPACEDECL);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 139;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 136; 
        comment();
        state = 141;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 143;
      _la = inputSource.lookAhead(1);
      if (_la == T__5) {
        state = 142; 
        match(T__5);
      }
      state = 145; 
      match(T__6);
      state = 146; 
      match(ID);
      state = 147; 
      match(T__14);
      state = 153;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__18) | 
      	(BIG_ONE << T__5) | (BIG_ONE << SINGLE_LINE_COMMENT) | (BIG_ONE << MULTI_LINE_COMMENT) | 
      	(BIG_ONE << ID))) != BIG_ZERO)) {
        state = 148; 
        namespaceField();
        state = 149; 
        match(T__15);
        state = 155;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 156; 
      match(T__9);
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  NamespaceFieldContext namespaceField() {
    var localContext = new NamespaceFieldContext(context, state);
    enterRule(localContext, 14, RULE_NAMESPACEFIELD);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 161;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 158; 
        comment();
        state = 163;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 165;
      _la = inputSource.lookAhead(1);
      if (_la == T__5) {
        state = 164; 
        match(T__5);
      }
      state = 168;
      _la = inputSource.lookAhead(1);
      if (_la == T__18) {
        state = 167; 
        match(T__18);
      }
      state = 170; 
      match(ID);
      state = 173;
      _la = inputSource.lookAhead(1);
      if (_la == T__16) {
        state = 171; 
        match(T__16);
        state = 172; 
        type(0);
      }
      state = 177;
      _la = inputSource.lookAhead(1);
      if (_la == T__10) {
        state = 175; 
        match(T__10);
        state = 176; 
        expr();
      }
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }
  ExprContext expr() {
    var localContext = new ExprContext(context, state);
    enterRule(localContext, 16, RULE_EXPR);
    int _la;
    try {
      var _alt;
      state = 207;
      switch (inputSource.lookAhead(1)) {
        case ID: 
          localContext = new IdExprContext(localContext);
          enterOuterAlt(localContext, 1);
          state = 179; 
          match(ID); 
          break;
        case NUM: 
          localContext = new NumExprContext(localContext);
          enterOuterAlt(localContext, 2);
          state = 180; 
          match(NUM); 
          break;
        case T__17:
        case T__0: 
          localContext = new BoolExprContext(localContext);
          enterOuterAlt(localContext, 3);
          state = 181;
          _la = inputSource.lookAhead(1);
          if (!(_la == T__17 || _la == T__0)) {
            errorHandler.recoverInline(this);
          }
          consume(); 
          break;
        case T__4: 
          localContext = new NullExprContext(localContext);
          enterOuterAlt(localContext, 4);
          state = 182; 
          match(T__4); 
          break;
        case STRING: 
          localContext = new StringExprContext(localContext);
          enterOuterAlt(localContext, 5);
          state = 183; 
          match(STRING); 
          break;
        case T__13: 
          localContext = new ArrayExprContext(localContext);
          enterOuterAlt(localContext, 6);
          state = 184; 
          match(T__13);
          state = 200;
          _la = inputSource.lookAhead(1);
          if ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__17) | 
          	(BIG_ONE << T__13) | (BIG_ONE << T__4) | (BIG_ONE << T__3) | 
          	(BIG_ONE << T__0) | (BIG_ONE << NUM) | (BIG_ONE << STRING) | 
          	(BIG_ONE << ID))) != BIG_ZERO)) {
            state = 190;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(inputSource, 27, context);
            while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
              if (_alt == 1) {
                state = 185; 
                expr();
                state = 186; 
                match(T__1); 
              }
              state = 192;
              errorHandler.sync(this);
              _alt = interpreter.adaptivePredict(inputSource, 27, context);
            }
            state = 193; 
            expr();
            state = 197;
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
            while (_la == T__1) {
              state = 194; 
              match(T__1);
              state = 199;
              errorHandler.sync(this);
              _la = inputSource.lookAhead(1);
            }
          }
          state = 202; 
          match(T__8); 
          break;
        case T__3: 
          localContext = new ParenthesizedExprContext(localContext);
          enterOuterAlt(localContext, 7);
          state = 203; 
          match(T__3);
          state = 204; 
          expr();
          state = 205; 
          match(T__2); 
          break;
        default: throw new NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localContext.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localContext;
  }

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 2: return _typeSemanticPredicate(localContext, predIndex);
    }
    return true;
  }

  bool _typeSemanticPredicate(TypeContext localContext, int predIndex) {
    switch (predIndex) {
      case 0: return precedencePredicate(context, 3);
      case 1: return precedencePredicate(context, 5);
      case 2: return precedencePredicate(context, 1);
    }
    return true;
  }
}

class CompilationUnitContext extends ParserRuleContext {

  CompilationUnitContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_COMPILATIONUNIT;

  ExportNamespaceDeclContext getExportNamespaceDecl(int i) => getRuleContext((c) => c is ExportNamespaceDeclContext, i);

  InterfaceDeclContext getInterfaceDecl(int i) => getRuleContext((c) => c is InterfaceDeclContext, i);

  List<ExportNamespaceDeclContext> getExportNamespaceDecls() => getRuleContexts((c) => c is ExportNamespaceDeclContext);

  List<InterfaceDeclContext> getInterfaceDecls() => getRuleContexts((c) => c is InterfaceDeclContext);

  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterCompilationUnit(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitCompilationUnit(this);
  }
}

class CommentContext extends ParserRuleContext {

  CommentContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_COMMENT;

  TerminalNode getMULTI_LINE_COMMENT() => getToken(TsInterfaceParser.MULTI_LINE_COMMENT, 0);

  TerminalNode getSINGLE_LINE_COMMENT() => getToken(TsInterfaceParser.SINGLE_LINE_COMMENT, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterComment(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitComment(this);
  }
}

class TypeContext extends ParserRuleContext {

  TypeContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_TYPE;
 
  TypeContext.from(TypeContext context) : super.from(context) {
  }
}

class KeyTypePairContext extends ParserRuleContext {

  KeyTypePairContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_KEYTYPEPAIR;

  TerminalNode getID() => getToken(TsInterfaceParser.ID, 0);

  List<CommentContext> getComments() => getRuleContexts((c) => c is CommentContext);

  CommentContext getComment(int i) => getRuleContext((c) => c is CommentContext, i);

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterKeyTypePair(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitKeyTypePair(this);
  }
}

class InterfaceDeclContext extends ParserRuleContext {

  InterfaceDeclContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_INTERFACEDECL;

  TerminalNode getID() => getToken(TsInterfaceParser.ID, 0);

  List<CommentContext> getComments() => getRuleContexts((c) => c is CommentContext);

  CommentContext getComment(int i) => getRuleContext((c) => c is CommentContext, i);

  List<InterfaceFieldContext> getInterfaceFields() => getRuleContexts((c) => c is InterfaceFieldContext);

  InterfaceFieldContext getInterfaceField(int i) => getRuleContext((c) => c is InterfaceFieldContext, i);

  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterInterfaceDecl(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitInterfaceDecl(this);
  }
}

class InterfaceFieldContext extends ParserRuleContext {

  InterfaceFieldContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_INTERFACEFIELD;

  TerminalNode getID() => getToken(TsInterfaceParser.ID, 0);

  List<CommentContext> getComments() => getRuleContexts((c) => c is CommentContext);

  CommentContext getComment(int i) => getRuleContext((c) => c is CommentContext, i);

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);

  TerminalNode getQUESTION() => getToken(TsInterfaceParser.QUESTION, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterInterfaceField(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitInterfaceField(this);
  }
}

class ExportNamespaceDeclContext extends ParserRuleContext {

  ExportNamespaceDeclContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_EXPORTNAMESPACEDECL;

  NamespaceFieldContext getNamespaceField(int i) => getRuleContext((c) => c is NamespaceFieldContext, i);

  TerminalNode getID() => getToken(TsInterfaceParser.ID, 0);

  List<CommentContext> getComments() => getRuleContexts((c) => c is CommentContext);

  CommentContext getComment(int i) => getRuleContext((c) => c is CommentContext, i);

  List<NamespaceFieldContext> getNamespaceFields() => getRuleContexts((c) => c is NamespaceFieldContext);

  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterExportNamespaceDecl(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitExportNamespaceDecl(this);
  }
}

class NamespaceFieldContext extends ParserRuleContext {

  NamespaceFieldContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_NAMESPACEFIELD;

  TerminalNode getID() => getToken(TsInterfaceParser.ID, 0);

  List<CommentContext> getComments() => getRuleContexts((c) => c is CommentContext);

  CommentContext getComment(int i) => getRuleContext((c) => c is CommentContext, i);

  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterNamespaceField(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitNamespaceField(this);
  }
}

class ExprContext extends ParserRuleContext {

  ExprContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_EXPR;
 
  ExprContext.from(ExprContext context) : super.from(context) {
  }
}

class ArrayTypeContext extends TypeContext {
  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);
  ArrayTypeContext(TypeContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterArrayType(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitArrayType(this);
  }
}

class SimpleTypeContext extends TypeContext {
  TerminalNode getID() => getToken(TsInterfaceParser.ID, 0);
  SimpleTypeContext(TypeContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterSimpleType(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitSimpleType(this);
  }
}

class ObjectTypeContext extends TypeContext {
  KeyTypePairContext getKeyTypePair(int i) => getRuleContext((c) => c is KeyTypePairContext, i);
  List<KeyTypePairContext> getKeyTypePairs() => getRuleContexts((c) => c is KeyTypePairContext);
  ObjectTypeContext(TypeContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterObjectType(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitObjectType(this);
  }
}

class UnionTypeContext extends TypeContext {
  TypeContext getType(int i) => getRuleContext((c) => c is TypeContext, i);
  List<TypeContext> getTypes() => getRuleContexts((c) => c is TypeContext);
  UnionTypeContext(TypeContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterUnionType(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitUnionType(this);
  }
}

class GenericTypeContext extends TypeContext {
  TypeContext target;
  TypeContext type;
  List<TypeContext> arguments = new List<TypeContext>();
  TypeContext getType(int i) => getRuleContext((c) => c is TypeContext, i);
  List<TypeContext> getTypes() => getRuleContexts((c) => c is TypeContext);
  GenericTypeContext(TypeContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterGenericType(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitGenericType(this);
  }
}

class LiteralTypeContext extends TypeContext {
  TerminalNode getNUM() => getToken(TsInterfaceParser.NUM, 0);
  TerminalNode getSTRING() => getToken(TsInterfaceParser.STRING, 0);
  LiteralTypeContext(TypeContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterLiteralType(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitLiteralType(this);
  }
}class BoolExprContext extends ExprContext {
  BoolExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterBoolExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitBoolExpr(this);
  }
}

class StringExprContext extends ExprContext {
  TerminalNode getSTRING() => getToken(TsInterfaceParser.STRING, 0);
  StringExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterStringExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitStringExpr(this);
  }
}

class ArrayExprContext extends ExprContext {
  List<ExprContext> getExprs() => getRuleContexts((c) => c is ExprContext);
  ExprContext getExpr(int i) => getRuleContext((c) => c is ExprContext, i);
  ArrayExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterArrayExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitArrayExpr(this);
  }
}

class IdExprContext extends ExprContext {
  TerminalNode getID() => getToken(TsInterfaceParser.ID, 0);
  IdExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterIdExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitIdExpr(this);
  }
}

class NumExprContext extends ExprContext {
  TerminalNode getNUM() => getToken(TsInterfaceParser.NUM, 0);
  NumExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterNumExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitNumExpr(this);
  }
}

class ParenthesizedExprContext extends ExprContext {
  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);
  ParenthesizedExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterParenthesizedExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitParenthesizedExpr(this);
  }
}

class NullExprContext extends ExprContext {
  NullExprContext(ExprContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterNullExpr(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitNullExpr(this);
  }
}