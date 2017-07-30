// Generated from TsInterface.g4 by antlr4dart

part of ts_definition.src.grammar;


class TsInterfaceParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_COMPILATIONUNIT = 0, RULE_COMMENT = 1, RULE_TYPE = 2, 
                   RULE_KEYTYPEPAIR = 3, RULE_INTERFACEDECL = 4, RULE_INTERFACEFIELD = 5, 
                   RULE_EXPORTNAMESPACEDECL = 6, RULE_NAMESPACEFIELD = 7, 
                   RULE_EXPR = 8;

  static const int T__16 = 1, T__15 = 2, T__14 = 3, T__13 = 4, T__12 = 5, 
                   T__11 = 6, T__10 = 7, T__9 = 8, T__8 = 9, T__7 = 10, 
                   T__6 = 11, T__5 = 12, T__4 = 13, T__3 = 14, T__2 = 15, 
                   T__1 = 16, T__0 = 17, WS = 18, SINGLE_LINE_COMMENT = 19, 
                   MULTI_LINE_COMMENT = 20, QUESTION = 21, NUM = 22, STRING = 23, 
                   ID = 24, OTHER = 25;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x1b\xb9\x04\x02\x09\x02\x04\x03\x09\x03\x04\x04"
  	"\x09\x04\x04\x05\x09\x05\x04\x06\x09\x06\x04\x07\x09\x07\x04\x08\x09"
  	"\x08\x04\x09\x09\x09\x04\x0a\x09\x0a\x03\x02\x03\x02\x03\x02\x07\x02"
  	"\x18\x0a\x02\x0c\x02\x0e\x02\x1b\x0b\x02\x03\x03\x03\x03\x03\x04\x03"
  	"\x04\x03\x04\x03\x04\x03\x04\x03\x04\x07\x04\x25\x0a\x04\x0c\x04\x0e"
  	"\x04\x28\x0b\x04\x03\x04\x03\x04\x07\x04\x2c\x0a\x04\x0c\x04\x0e\x04"
  	"\x2f\x0b\x04\x07\x04\x31\x0a\x04\x0c\x04\x0e\x04\x34\x0b\x04\x03\x04"
  	"\x05\x04\x37\x0a\x04\x03\x04\x03\x04\x03\x04\x07\x04\x3c\x0a\x04\x0c"
  	"\x04\x0e\x04\x3f\x0b\x04\x03\x05\x07\x05\x42\x0a\x05\x0c\x05\x0e\x05"
  	"\x45\x0b\x05\x03\x05\x03\x05\x03\x05\x05\x05\x4a\x0a\x05\x03\x06\x07"
  	"\x06\x4d\x0a\x06\x0c\x06\x0e\x06\x50\x0b\x06\x03\x06\x03\x06\x03\x06"
  	"\x03\x06\x03\x06\x07\x06\x57\x0a\x06\x0c\x06\x0e\x06\x5a\x0b\x06\x07"
  	"\x06\x5c\x0a\x06\x0c\x06\x0e\x06\x5f\x0b\x06\x03\x06\x03\x06\x03\x07"
  	"\x07\x07\x64\x0a\x07\x0c\x07\x0e\x07\x67\x0b\x07\x03\x07\x03\x07\x05"
  	"\x07\x6b\x0a\x07\x03\x07\x03\x07\x03\x07\x03\x08\x07\x08\x71\x0a\x08"
  	"\x0c\x08\x0e\x08\x74\x0b\x08\x03\x08\x05\x08\x77\x0a\x08\x03\x08\x03"
  	"\x08\x03\x08\x03\x08\x03\x08\x03\x08\x07\x08\x7f\x0a\x08\x0c\x08\x0e"
  	"\x08\x82\x0b\x08\x03\x08\x03\x08\x03\x09\x07\x09\x87\x0a\x09\x0c\x09"
  	"\x0e\x09\x8a\x0b\x09\x03\x09\x05\x09\x8d\x0a\x09\x03\x09\x05\x09\x90"
  	"\x0a\x09\x03\x09\x03\x09\x03\x09\x05\x09\x95\x0a\x09\x03\x09\x03\x09"
  	"\x05\x09\x99\x0a\x09\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a"
  	"\x03\x0a\x03\x0a\x03\x0a\x07\x0a\xa4\x0a\x0a\x0c\x0a\x0e\x0a\xa7\x0b"
  	"\x0a\x03\x0a\x03\x0a\x07\x0a\xab\x0a\x0a\x0c\x0a\x0e\x0a\xae\x0b\x0a"
  	"\x05\x0a\xb0\x0a\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x05\x0a"
  	"\xb7\x0a\x0a\x03\x0a\x03\x19\x03\x06\x0b\x02\x04\x06\x08\x0a\x0c\x0e"
  	"\x10\x12\x02\x04\x03\x02\x15\x16\x04\x02\x05\x05\x13\x13\xcf\x02\x19"
  	"\x03\x02\x02\x02\x04\x1c\x03\x02\x02\x02\x06\x36\x03\x02\x02\x02\x08"
  	"\x43\x03\x02\x02\x02\x0a\x4e\x03\x02\x02\x02\x0c\x65\x03\x02\x02\x02"
  	"\x0e\x72\x03\x02\x02\x02\x10\x88\x03\x02\x02\x02\x12\xb6\x03\x02\x02"
  	"\x02\x14\x18\x05\x0a\x06\x02\x15\x18\x05\x0e\x08\x02\x16\x18\x0b\x02"
  	"\x02\x02\x17\x14\x03\x02\x02\x02\x17\x15\x03\x02\x02\x02\x17\x16\x03"
  	"\x02\x02\x02\x18\x1b\x03\x02\x02\x02\x19\x1a\x03\x02\x02\x02\x19\x17"
  	"\x03\x02\x02\x02\x1a\x03\x03\x02\x02\x02\x1b\x19\x03\x02\x02\x02\x1c"
  	"\x1d\x09\x02\x02\x02\x1d\x05\x03\x02\x02\x02\x1e\x1f\x08\x04\x01\x02"
  	"\x1f\x37\x07\x1a\x02\x02\x20\x32\x07\x08\x02\x02\x21\x22\x05\x08\x05"
  	"\x02\x22\x23\x07\x12\x02\x02\x23\x25\x03\x02\x02\x02\x24\x21\x03\x02"
  	"\x02\x02\x25\x28\x03\x02\x02\x02\x26\x24\x03\x02\x02\x02\x26\x27\x03"
  	"\x02\x02\x02\x27\x29\x03\x02\x02\x02\x28\x26\x03\x02\x02\x02\x29\x2d"
  	"\x05\x08\x05\x02\x2a\x2c\x07\x12\x02\x02\x2b\x2a\x03\x02\x02\x02\x2c"
  	"\x2f\x03\x02\x02\x02\x2d\x2b\x03\x02\x02\x02\x2d\x2e\x03\x02\x02\x02"
  	"\x2e\x31\x03\x02\x02\x02\x2f\x2d\x03\x02\x02\x02\x30\x26\x03\x02\x02"
  	"\x02\x31\x34\x03\x02\x02\x02\x32\x30\x03\x02\x02\x02\x32\x33\x03\x02"
  	"\x02\x02\x33\x35\x03\x02\x02\x02\x34\x32\x03\x02\x02\x02\x35\x37\x07"
  	"\x0b\x02\x02\x36\x1e\x03\x02\x02\x02\x36\x20\x03\x02\x02\x02\x37\x3d"
  	"\x03\x02\x02\x02\x38\x39\x0c\x04\x02\x02\x39\x3a\x07\x09\x02\x02\x3a"
  	"\x3c\x07\x0c\x02\x02\x3b\x38\x03\x02\x02\x02\x3c\x3f\x03\x02\x02\x02"
  	"\x3d\x3b\x03\x02\x02\x02\x3d\x3e\x03\x02\x02\x02\x3e\x07\x03\x02\x02"
  	"\x02\x3f\x3d\x03\x02\x02\x02\x40\x42\x05\x04\x03\x02\x41\x40\x03\x02"
  	"\x02\x02\x42\x45\x03\x02\x02\x02\x43\x41\x03\x02\x02\x02\x43\x44\x03"
  	"\x02\x02\x02\x44\x46\x03\x02\x02\x02\x45\x43\x03\x02\x02\x02\x46\x49"
  	"\x07\x1a\x02\x02\x47\x48\x07\x06\x02\x02\x48\x4a\x05\x06\x04\x02\x49"
  	"\x47\x03\x02\x02\x02\x49\x4a\x03\x02\x02\x02\x4a\x09\x03\x02\x02\x02"
  	"\x4b\x4d\x05\x04\x03\x02\x4c\x4b\x03\x02\x02\x02\x4d\x50\x03\x02\x02"
  	"\x02\x4e\x4c\x03\x02\x02\x02\x4e\x4f\x03\x02\x02\x02\x4f\x51\x03\x02"
  	"\x02\x02\x50\x4e\x03\x02\x02\x02\x51\x52\x07\x03\x02\x02\x52\x53\x07"
  	"\x1a\x02\x02\x53\x5d\x07\x08\x02\x02\x54\x58\x05\x0c\x07\x02\x55\x57"
  	"\x07\x07\x02\x02\x56\x55\x03\x02\x02\x02\x57\x5a\x03\x02\x02\x02\x58"
  	"\x56\x03\x02\x02\x02\x58\x59\x03\x02\x02\x02\x59\x5c\x03\x02\x02\x02"
  	"\x5a\x58\x03\x02\x02\x02\x5b\x54\x03\x02\x02\x02\x5c\x5f\x03\x02\x02"
  	"\x02\x5d\x5b\x03\x02\x02\x02\x5d\x5e\x03\x02\x02\x02\x5e\x60\x03\x02"
  	"\x02\x02\x5f\x5d\x03\x02\x02\x02\x60\x61\x07\x0b\x02\x02\x61\x0b\x03"
  	"\x02\x02\x02\x62\x64\x05\x04\x03\x02\x63\x62\x03\x02\x02\x02\x64\x67"
  	"\x03\x02\x02\x02\x65\x63\x03\x02\x02\x02\x65\x66\x03\x02\x02\x02\x66"
  	"\x68\x03\x02\x02\x02\x67\x65\x03\x02\x02\x02\x68\x6a\x07\x1a\x02\x02"
  	"\x69\x6b\x07\x17\x02\x02\x6a\x69\x03\x02\x02\x02\x6a\x6b\x03\x02\x02"
  	"\x02\x6b\x6c\x03\x02\x02\x02\x6c\x6d\x07\x06\x02\x02\x6d\x6e\x05\x06"
  	"\x04\x02\x6e\x0d\x03\x02\x02\x02\x6f\x71\x05\x04\x03\x02\x70\x6f\x03"
  	"\x02\x02\x02\x71\x74\x03\x02\x02\x02\x72\x70\x03\x02\x02\x02\x72\x73"
  	"\x03\x02\x02\x02\x73\x76\x03\x02\x02\x02\x74\x72\x03\x02\x02\x02\x75"
  	"\x77\x07\x0e\x02\x02\x76\x75\x03\x02\x02\x02\x76\x77\x03\x02\x02\x02"
  	"\x77\x78\x03\x02\x02\x02\x78\x79\x07\x0d\x02\x02\x79\x7a\x07\x1a\x02"
  	"\x02\x7a\x80\x07\x08\x02\x02\x7b\x7c\x05\x10\x09\x02\x7c\x7d\x07\x07"
  	"\x02\x02\x7d\x7f\x03\x02\x02\x02\x7e\x7b\x03\x02\x02\x02\x7f\x82\x03"
  	"\x02\x02\x02\x80\x7e\x03\x02\x02\x02\x80\x81\x03\x02\x02\x02\x81\x83"
  	"\x03\x02\x02\x02\x82\x80\x03\x02\x02\x02\x83\x84\x07\x0b\x02\x02\x84"
  	"\x0f\x03\x02\x02\x02\x85\x87\x05\x04\x03\x02\x86\x85\x03\x02\x02\x02"
  	"\x87\x8a\x03\x02\x02\x02\x88\x86\x03\x02\x02\x02\x88\x89\x03\x02\x02"
  	"\x02\x89\x8c\x03\x02\x02\x02\x8a\x88\x03\x02\x02\x02\x8b\x8d\x07\x0e"
  	"\x02\x02\x8c\x8b\x03\x02\x02\x02\x8c\x8d\x03\x02\x02\x02\x8d\x8f\x03"
  	"\x02\x02\x02\x8e\x90\x07\x04\x02\x02\x8f\x8e\x03\x02\x02\x02\x8f\x90"
  	"\x03\x02\x02\x02\x90\x91\x03\x02\x02\x02\x91\x94\x07\x1a\x02\x02\x92"
  	"\x93\x07\x06\x02\x02\x93\x95\x05\x06\x04\x02\x94\x92\x03\x02\x02\x02"
  	"\x94\x95\x03\x02\x02\x02\x95\x98\x03\x02\x02\x02\x96\x97\x07\x0a\x02"
  	"\x02\x97\x99\x05\x12\x0a\x02\x98\x96\x03\x02\x02\x02\x98\x99\x03\x02"
  	"\x02\x02\x99\x11\x03\x02\x02\x02\x9a\xb7\x07\x1a\x02\x02\x9b\xb7\x07"
  	"\x18\x02\x02\x9c\xb7\x09\x03\x02\x02\x9d\xb7\x07\x0f\x02\x02\x9e\xb7"
  	"\x07\x19\x02\x02\x9f\xaf\x07\x09\x02\x02\xa0\xa1\x05\x12\x0a\x02\xa1"
  	"\xa2\x07\x12\x02\x02\xa2\xa4\x03\x02\x02\x02\xa3\xa0\x03\x02\x02\x02"
  	"\xa4\xa7\x03\x02\x02\x02\xa5\xa3\x03\x02\x02\x02\xa5\xa6\x03\x02\x02"
  	"\x02\xa6\xa8\x03\x02\x02\x02\xa7\xa5\x03\x02\x02\x02\xa8\xac\x05\x12"
  	"\x0a\x02\xa9\xab\x07\x12\x02\x02\xaa\xa9\x03\x02\x02\x02\xab\xae\x03"
  	"\x02\x02\x02\xac\xaa\x03\x02\x02\x02\xac\xad\x03\x02\x02\x02\xad\xb0"
  	"\x03\x02\x02\x02\xae\xac\x03\x02\x02\x02\xaf\xa5\x03\x02\x02\x02\xaf"
  	"\xb0\x03\x02\x02\x02\xb0\xb1\x03\x02\x02\x02\xb1\xb7\x07\x0c\x02\x02"
  	"\xb2\xb3\x07\x10\x02\x02\xb3\xb4\x05\x12\x0a\x02\xb4\xb5\x07\x11\x02"
  	"\x02\xb5\xb7\x03\x02\x02\x02\xb6\x9a\x03\x02\x02\x02\xb6\x9b\x03\x02"
  	"\x02\x02\xb6\x9c\x03\x02\x02\x02\xb6\x9d\x03\x02\x02\x02\xb6\x9e\x03"
  	"\x02\x02\x02\xb6\x9f\x03\x02\x02\x02\xb6\xb2\x03\x02\x02\x02\xb7\x13"
  	"\x03\x02\x02\x02\x1c\x17\x19\x26\x2d\x32\x36\x3d\x43\x49\x4e\x58\x5d"
  	"\x65\x6a\x72\x76\x80\x88\x8c\x8f\x94\x98\xa5\xac\xaf\xb6";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'interface'", "'const'", "'true'", "':'", "';'", "'{'", 
    "'['", "'='", "'}'", "']'", "'namespace'", "'export'", "'null'", "'('", 
    "')'", "','", "'false'", "WS", "SINGLE_LINE_COMMENT", "MULTI_LINE_COMMENT", 
    "'?'", "NUM", "STRING", "ID", "OTHER"
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
      state = 52;
      switch (inputSource.lookAhead(1)) {
        case ID: 
          localContext = new SimpleTypeContext(localContext);
          context = localContext;
          _prevctx = localContext;

          state = 29; 
          match(ID); 
          break;
        case T__11: 
          localContext = new ObjectTypeContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 30; 
          match(T__11);
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
          match(T__8); 
          break;
        default: throw new NoViableAltException(this);
      }
      context.stop = inputSource.lookToken(-1);
      state = 59;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 6, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          localContext = new ArrayTypeContext(new TypeContext(_parentctx, _parentState));
          pushNewRecursionContext(localContext, _startState, RULE_TYPE);
          state = 54;
          if (!(precedencePredicate(context, 2))) 
            throw new FailedPredicateException(this, "precedencePredicate(context, 2)");
          state = 55; 
          match(T__10);
          state = 56; 
          match(T__7); 
        }
        state = 61;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 6, context);
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
      state = 65;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 62; 
        comment();
        state = 67;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 68; 
      match(ID);
      state = 71;
      _la = inputSource.lookAhead(1);
      if (_la == T__13) {
        state = 69; 
        match(T__13);
        state = 70; 
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
      state = 76;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 73; 
        comment();
        state = 78;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 79; 
      match(T__16);
      state = 80; 
      match(ID);
      state = 81; 
      match(T__11);
      state = 91;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << SINGLE_LINE_COMMENT) | 
      	(BIG_ONE << MULTI_LINE_COMMENT) | (BIG_ONE << ID))) != BIG_ZERO)) {
        state = 82; 
        interfaceField();
        state = 86;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
        while (_la == T__12) {
          state = 83; 
          match(T__12);
          state = 88;
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
        }
        state = 93;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 94; 
      match(T__8);
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
      state = 99;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 96; 
        comment();
        state = 101;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 102; 
      match(ID);
      state = 104;
      _la = inputSource.lookAhead(1);
      if (_la == QUESTION) {
        state = 103; 
        match(QUESTION);
      }
      state = 106; 
      match(T__13);
      state = 107; 
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
      state = 112;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 109; 
        comment();
        state = 114;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 116;
      _la = inputSource.lookAhead(1);
      if (_la == T__5) {
        state = 115; 
        match(T__5);
      }
      state = 118; 
      match(T__6);
      state = 119; 
      match(ID);
      state = 120; 
      match(T__11);
      state = 126;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__15) | 
      	(BIG_ONE << T__5) | (BIG_ONE << SINGLE_LINE_COMMENT) | (BIG_ONE << MULTI_LINE_COMMENT) | 
      	(BIG_ONE << ID))) != BIG_ZERO)) {
        state = 121; 
        namespaceField();
        state = 122; 
        match(T__12);
        state = 128;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 129; 
      match(T__8);
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
      state = 134;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 131; 
        comment();
        state = 136;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 138;
      _la = inputSource.lookAhead(1);
      if (_la == T__5) {
        state = 137; 
        match(T__5);
      }
      state = 141;
      _la = inputSource.lookAhead(1);
      if (_la == T__15) {
        state = 140; 
        match(T__15);
      }
      state = 143; 
      match(ID);
      state = 146;
      _la = inputSource.lookAhead(1);
      if (_la == T__13) {
        state = 144; 
        match(T__13);
        state = 145; 
        type(0);
      }
      state = 150;
      _la = inputSource.lookAhead(1);
      if (_la == T__9) {
        state = 148; 
        match(T__9);
        state = 149; 
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
      state = 180;
      switch (inputSource.lookAhead(1)) {
        case ID: 
          localContext = new IdExprContext(localContext);
          enterOuterAlt(localContext, 1);
          state = 152; 
          match(ID); 
          break;
        case NUM: 
          localContext = new NumExprContext(localContext);
          enterOuterAlt(localContext, 2);
          state = 153; 
          match(NUM); 
          break;
        case T__14:
        case T__0: 
          localContext = new BoolExprContext(localContext);
          enterOuterAlt(localContext, 3);
          state = 154;
          _la = inputSource.lookAhead(1);
          if (!(_la == T__14 || _la == T__0)) {
            errorHandler.recoverInline(this);
          }
          consume(); 
          break;
        case T__4: 
          localContext = new NullExprContext(localContext);
          enterOuterAlt(localContext, 4);
          state = 155; 
          match(T__4); 
          break;
        case STRING: 
          localContext = new StringExprContext(localContext);
          enterOuterAlt(localContext, 5);
          state = 156; 
          match(STRING); 
          break;
        case T__10: 
          localContext = new ArrayExprContext(localContext);
          enterOuterAlt(localContext, 6);
          state = 157; 
          match(T__10);
          state = 173;
          _la = inputSource.lookAhead(1);
          if ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__14) | 
          	(BIG_ONE << T__10) | (BIG_ONE << T__4) | (BIG_ONE << T__3) | 
          	(BIG_ONE << T__0) | (BIG_ONE << NUM) | (BIG_ONE << STRING) | 
          	(BIG_ONE << ID))) != BIG_ZERO)) {
            state = 163;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(inputSource, 22, context);
            while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
              if (_alt == 1) {
                state = 158; 
                expr();
                state = 159; 
                match(T__1); 
              }
              state = 165;
              errorHandler.sync(this);
              _alt = interpreter.adaptivePredict(inputSource, 22, context);
            }
            state = 166; 
            expr();
            state = 170;
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
            while (_la == T__1) {
              state = 167; 
              match(T__1);
              state = 172;
              errorHandler.sync(this);
              _la = inputSource.lookAhead(1);
            }
          }
          state = 175; 
          match(T__7); 
          break;
        case T__3: 
          localContext = new ParenthesizedExprContext(localContext);
          enterOuterAlt(localContext, 7);
          state = 176; 
          match(T__3);
          state = 177; 
          expr();
          state = 178; 
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
      case 0: return precedencePredicate(context, 2);
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