// Generated from TsInterface.g4 by antlr4dart

part of ts_definition.src.grammar;


class TsInterfaceParser extends Parser {

  static const int EOF = Token.EOF;

  static const int RULE_COMPILATIONUNIT = 0, RULE_COMMENT = 1, RULE_KEYTYPEPAIR = 2, 
                   RULE_INTERFACEDECL = 3, RULE_INTERFACEFIELD = 4, RULE_ARRAYKEYINTERFACEFIELD = 5, 
                   RULE_EXPORTNAMESPACEDECL = 6, RULE_NAMESPACEFIELD = 7, 
                   RULE_UNIONTYPEDECL = 8, RULE_EXPR = 9, RULE_TYPE = 10;

  static const int T__20 = 1, T__19 = 2, T__18 = 3, T__17 = 4, T__16 = 5, 
                   T__15 = 6, T__14 = 7, T__13 = 8, T__12 = 9, T__11 = 10, 
                   T__10 = 11, T__9 = 12, T__8 = 13, T__7 = 14, T__6 = 15, 
                   T__5 = 16, T__4 = 17, T__3 = 18, T__2 = 19, T__1 = 20, 
                   T__0 = 21, WS = 22, SINGLE_LINE_COMMENT = 23, MULTI_LINE_COMMENT = 24, 
                   QUESTION = 25, NUM = 26, STRING = 27, ID = 28, OTHER = 29;

  static const String _serializedAtn =  "\x03\u0430\ud6d1\u8206\uad2d\u4417"
  	"\uaef1\u8d80\uaadd\x03\x1f\u0115\x04\x02\x09\x02\x04\x03\x09\x03\x04"
  	"\x04\x09\x04\x04\x05\x09\x05\x04\x06\x09\x06\x04\x07\x09\x07\x04\x08"
  	"\x09\x08\x04\x09\x09\x09\x04\x0a\x09\x0a\x04\x0b\x09\x0b\x04\x0c\x09"
  	"\x0c\x03\x02\x03\x02\x03\x02\x03\x02\x07\x02\x1d\x0a\x02\x0c\x02\x0e"
  	"\x02\x20\x0b\x02\x03\x03\x03\x03\x03\x04\x07\x04\x25\x0a\x04\x0c\x04"
  	"\x0e\x04\x28\x0b\x04\x03\x04\x03\x04\x05\x04\x2c\x0a\x04\x03\x04\x03"
  	"\x04\x05\x04\x30\x0a\x04\x03\x05\x07\x05\x33\x0a\x05\x0c\x05\x0e\x05"
  	"\x36\x0b\x05\x03\x05\x05\x05\x39\x0a\x05\x03\x05\x03\x05\x03\x05\x03"
  	"\x05\x03\x05\x03\x05\x07\x05\x41\x0a\x05\x0c\x05\x0e\x05\x44\x0b\x05"
  	"\x03\x05\x03\x05\x07\x05\x48\x0a\x05\x0c\x05\x0e\x05\x4b\x0b\x05\x05"
  	"\x05\x4d\x0a\x05\x03\x05\x05\x05\x50\x0a\x05\x03\x05\x03\x05\x05\x05"
  	"\x54\x0a\x05\x03\x05\x03\x05\x03\x05\x05\x05\x59\x0a\x05\x03\x05\x07"
  	"\x05\x5c\x0a\x05\x0c\x05\x0e\x05\x5f\x0b\x05\x07\x05\x61\x0a\x05\x0c"
  	"\x05\x0e\x05\x64\x0b\x05\x03\x05\x03\x05\x03\x06\x07\x06\x69\x0a\x06"
  	"\x0c\x06\x0e\x06\x6c\x0b\x06\x03\x06\x03\x06\x05\x06\x70\x0a\x06\x03"
  	"\x06\x03\x06\x03\x06\x03\x07\x07\x07\x76\x0a\x07\x0c\x07\x0e\x07\x79"
  	"\x0b\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03\x07\x03"
  	"\x07\x03\x08\x07\x08\x84\x0a\x08\x0c\x08\x0e\x08\x87\x0b\x08\x03\x08"
  	"\x05\x08\x8a\x0a\x08\x03\x08\x03\x08\x03\x08\x03\x08\x03\x08\x03\x08"
  	"\x07\x08\x92\x0a\x08\x0c\x08\x0e\x08\x95\x0b\x08\x03\x08\x03\x08\x03"
  	"\x09\x07\x09\x9a\x0a\x09\x0c\x09\x0e\x09\x9d\x0b\x09\x03\x09\x05\x09"
  	"\xa0\x0a\x09\x03\x09\x05\x09\xa3\x0a\x09\x03\x09\x03\x09\x03\x09\x05"
  	"\x09\xa8\x0a\x09\x03\x09\x03\x09\x05\x09\xac\x0a\x09\x03\x0a\x05\x0a"
  	"\xaf\x0a\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0a\x03\x0b\x03\x0b"
  	"\x03\x0b\x03\x0b\x03\x0b\x03\x0b\x03\x0b\x03\x0b\x03\x0b\x07\x0b\xbf"
  	"\x0a\x0b\x0c\x0b\x0e\x0b\xc2\x0b\x0b\x03\x0b\x03\x0b\x07\x0b\xc6\x0a"
  	"\x0b\x0c\x0b\x0e\x0b\xc9\x0b\x0b\x05\x0b\xcb\x0a\x0b\x03\x0b\x03\x0b"
  	"\x03\x0b\x03\x0b\x03\x0b\x05\x0b\xd2\x0a\x0b\x03\x0c\x03\x0c\x03\x0c"
  	"\x03\x0c\x03\x0c\x03\x0c\x05\x0c\xda\x0a\x0c\x03\x0c\x03\x0c\x07\x0c"
  	"\xde\x0a\x0c\x0c\x0c\x0e\x0c\xe1\x0b\x0c\x03\x0c\x03\x0c\x05\x0c\xe5"
  	"\x0a\x0c\x03\x0c\x07\x0c\xe8\x0a\x0c\x0c\x0c\x0e\x0c\xeb\x0b\x0c\x07"
  	"\x0c\xed\x0a\x0c\x0c\x0c\x0e\x0c\xf0\x0b\x0c\x03\x0c\x03\x0c\x05\x0c"
  	"\xf4\x0a\x0c\x03\x0c\x03\x0c\x03\x0c\x03\x0c\x03\x0c\x03\x0c\x03\x0c"
  	"\x03\x0c\x03\x0c\x03\x0c\x03\x0c\x07\x0c\u0101\x0a\x0c\x0c\x0c\x0e\x0c"
  	"\u0104\x0b\x0c\x03\x0c\x03\x0c\x07\x0c\u0108\x0a\x0c\x0c\x0c\x0e\x0c"
  	"\u010b\x0b\x0c\x05\x0c\u010d\x0a\x0c\x03\x0c\x07\x0c\u0110\x0a\x0c\x0c"
  	"\x0c\x0e\x0c\u0113\x0b\x0c\x03\x0c\x03\x1e\x03\x16\x0d\x02\x04\x06\x08"
  	"\x0a\x0c\x0e\x10\x12\x14\x16\x02\x05\x03\x02\x19\x1a\x04\x02\x05\x05"
  	"\x17\x17\x04\x02\x13\x13\x1c\x1d\u013d\x02\x1e\x03\x02\x02\x02\x04\x21"
  	"\x03\x02\x02\x02\x06\x26\x03\x02\x02\x02\x08\x34\x03\x02\x02\x02\x0a"
  	"\x6a\x03\x02\x02\x02\x0c\x77\x03\x02\x02\x02\x0e\x85\x03\x02\x02\x02"
  	"\x10\x9b\x03\x02\x02\x02\x12\xae\x03\x02\x02\x02\x14\xd1\x03\x02\x02"
  	"\x02\x16\xf3\x03\x02\x02\x02\x18\x1d\x05\x08\x05\x02\x19\x1d\x05\x0e"
  	"\x08\x02\x1a\x1d\x05\x12\x0a\x02\x1b\x1d\x0b\x02\x02\x02\x1c\x18\x03"
  	"\x02\x02\x02\x1c\x19\x03\x02\x02\x02\x1c\x1a\x03\x02\x02\x02\x1c\x1b"
  	"\x03\x02\x02\x02\x1d\x20\x03\x02\x02\x02\x1e\x1f\x03\x02\x02\x02\x1e"
  	"\x1c\x03\x02\x02\x02\x1f\x03\x03\x02\x02\x02\x20\x1e\x03\x02\x02\x02"
  	"\x21\x22\x09\x02\x02\x02\x22\x05\x03\x02\x02\x02\x23\x25\x05\x04\x03"
  	"\x02\x24\x23\x03\x02\x02\x02\x25\x28\x03\x02\x02\x02\x26\x24\x03\x02"
  	"\x02\x02\x26\x27\x03\x02\x02\x02\x27\x29\x03\x02\x02\x02\x28\x26\x03"
  	"\x02\x02\x02\x29\x2b\x07\x1e\x02\x02\x2a\x2c\x07\x1b\x02\x02\x2b\x2a"
  	"\x03\x02\x02\x02\x2b\x2c\x03\x02\x02\x02\x2c\x2f\x03\x02\x02\x02\x2d"
  	"\x2e\x07\x06\x02\x02\x2e\x30\x05\x16\x0c\x02\x2f\x2d\x03\x02\x02\x02"
  	"\x2f\x30\x03\x02\x02\x02\x30\x07\x03\x02\x02\x02\x31\x33\x05\x04\x03"
  	"\x02\x32\x31\x03\x02\x02\x02\x33\x36\x03\x02\x02\x02\x34\x32\x03\x02"
  	"\x02\x02\x34\x35\x03\x02\x02\x02\x35\x38\x03\x02\x02\x02\x36\x34\x03"
  	"\x02\x02\x02\x37\x39\x07\x12\x02\x02\x38\x37\x03\x02\x02\x02\x38\x39"
  	"\x03\x02\x02\x02\x39\x3a\x03\x02\x02\x02\x3a\x3b\x07\x03\x02\x02\x3b"
  	"\x4f\x07\x1e\x02\x02\x3c\x4c\x07\x0b\x02\x02\x3d\x3e\x05\x16\x0c\x02"
  	"\x3e\x3f\x07\x16\x02\x02\x3f\x41\x03\x02\x02\x02\x40\x3d\x03\x02\x02"
  	"\x02\x41\x44\x03\x02\x02\x02\x42\x40\x03\x02\x02\x02\x42\x43\x03\x02"
  	"\x02\x02\x43\x45\x03\x02\x02\x02\x44\x42\x03\x02\x02\x02\x45\x49\x05"
  	"\x16\x0c\x02\x46\x48\x07\x16\x02\x02\x47\x46\x03\x02\x02\x02\x48\x4b"
  	"\x03\x02\x02\x02\x49\x47\x03\x02\x02\x02\x49\x4a\x03\x02\x02\x02\x4a"
  	"\x4d\x03\x02\x02\x02\x4b\x49\x03\x02\x02\x02\x4c\x42\x03\x02\x02\x02"
  	"\x4c\x4d\x03\x02\x02\x02\x4d\x4e\x03\x02\x02\x02\x4e\x50\x07\x10\x02"
  	"\x02\x4f\x3c\x03\x02\x02\x02\x4f\x50\x03\x02\x02\x02\x50\x53\x03\x02"
  	"\x02\x02\x51\x52\x07\x0f\x02\x02\x52\x54\x05\x16\x0c\x02\x53\x51\x03"
  	"\x02\x02\x02\x53\x54\x03\x02\x02\x02\x54\x55\x03\x02\x02\x02\x55\x62"
  	"\x07\x09\x02\x02\x56\x59\x05\x0a\x06\x02\x57\x59\x05\x0c\x07\x02\x58"
  	"\x56\x03\x02\x02\x02\x58\x57\x03\x02\x02\x02\x59\x5d\x03\x02\x02\x02"
  	"\x5a\x5c\x07\x08\x02\x02\x5b\x5a\x03\x02\x02\x02\x5c\x5f\x03\x02\x02"
  	"\x02\x5d\x5b\x03\x02\x02\x02\x5d\x5e\x03\x02\x02\x02\x5e\x61\x03\x02"
  	"\x02\x02\x5f\x5d\x03\x02\x02\x02\x60\x58\x03\x02\x02\x02\x61\x64\x03"
  	"\x02\x02\x02\x62\x60\x03\x02\x02\x02\x62\x63\x03\x02\x02\x02\x63\x65"
  	"\x03\x02\x02\x02\x64\x62\x03\x02\x02\x02\x65\x66\x07\x0e\x02\x02\x66"
  	"\x09\x03\x02\x02\x02\x67\x69\x05\x04\x03\x02\x68\x67\x03\x02\x02\x02"
  	"\x69\x6c\x03\x02\x02\x02\x6a\x68\x03\x02\x02\x02\x6a\x6b\x03\x02\x02"
  	"\x02\x6b\x6d\x03\x02\x02\x02\x6c\x6a\x03\x02\x02\x02\x6d\x6f\x07\x1e"
  	"\x02\x02\x6e\x70\x07\x1b\x02\x02\x6f\x6e\x03\x02\x02\x02\x6f\x70\x03"
  	"\x02\x02\x02\x70\x71\x03\x02\x02\x02\x71\x72\x07\x06\x02\x02\x72\x73"
  	"\x05\x16\x0c\x02\x73\x0b\x03\x02\x02\x02\x74\x76\x05\x04\x03\x02\x75"
  	"\x74\x03\x02\x02\x02\x76\x79\x03\x02\x02\x02\x77\x75\x03\x02\x02\x02"
  	"\x77\x78\x03\x02\x02\x02\x78\x7a\x03\x02\x02\x02\x79\x77\x03\x02\x02"
  	"\x02\x7a\x7b\x07\x07\x02\x02\x7b\x7c\x07\x1e\x02\x02\x7c\x7d\x07\x06"
  	"\x02\x02\x7d\x7e\x05\x16\x0c\x02\x7e\x7f\x07\x0d\x02\x02\x7f\x80\x07"
  	"\x06\x02\x02\x80\x81\x05\x16\x0c\x02\x81\x0d\x03\x02\x02\x02\x82\x84"
  	"\x05\x04\x03\x02\x83\x82\x03\x02\x02\x02\x84\x87\x03\x02\x02\x02\x85"
  	"\x83\x03\x02\x02\x02\x85\x86\x03\x02\x02\x02\x86\x89\x03\x02\x02\x02"
  	"\x87\x85\x03\x02\x02\x02\x88\x8a\x07\x12\x02\x02\x89\x88\x03\x02\x02"
  	"\x02\x89\x8a\x03\x02\x02\x02\x8a\x8b\x03\x02\x02\x02\x8b\x8c\x07\x11"
  	"\x02\x02\x8c\x8d\x07\x1e\x02\x02\x8d\x93\x07\x09\x02\x02\x8e\x8f\x05"
  	"\x10\x09\x02\x8f\x90\x07\x08\x02\x02\x90\x92\x03\x02\x02\x02\x91\x8e"
  	"\x03\x02\x02\x02\x92\x95\x03\x02\x02\x02\x93\x91\x03\x02\x02\x02\x93"
  	"\x94\x03\x02\x02\x02\x94\x96\x03\x02\x02\x02\x95\x93\x03\x02\x02\x02"
  	"\x96\x97\x07\x0e\x02\x02\x97\x0f\x03\x02\x02\x02\x98\x9a\x05\x04\x03"
  	"\x02\x99\x98\x03\x02\x02\x02\x9a\x9d\x03\x02\x02\x02\x9b\x99\x03\x02"
  	"\x02\x02\x9b\x9c\x03\x02\x02\x02\x9c\x9f\x03\x02\x02\x02\x9d\x9b\x03"
  	"\x02\x02\x02\x9e\xa0\x07\x12\x02\x02\x9f\x9e\x03\x02\x02\x02\x9f\xa0"
  	"\x03\x02\x02\x02\xa0\xa2\x03\x02\x02\x02\xa1\xa3\x07\x04\x02\x02\xa2"
  	"\xa1\x03\x02\x02\x02\xa2\xa3\x03\x02\x02\x02\xa3\xa4\x03\x02\x02\x02"
  	"\xa4\xa7\x07\x1e\x02\x02\xa5\xa6\x07\x06\x02\x02\xa6\xa8\x05\x16\x0c"
  	"\x02\xa7\xa5\x03\x02\x02\x02\xa7\xa8\x03\x02\x02\x02\xa8\xab\x03\x02"
  	"\x02\x02\xa9\xaa\x07\x0c\x02\x02\xaa\xac\x05\x14\x0b\x02\xab\xa9\x03"
  	"\x02\x02\x02\xab\xac\x03\x02\x02\x02\xac\x11\x03\x02\x02\x02\xad\xaf"
  	"\x07\x12\x02\x02\xae\xad\x03\x02\x02\x02\xae\xaf\x03\x02\x02\x02\xaf"
  	"\xb0\x03\x02\x02\x02\xb0\xb1\x07\x1e\x02\x02\xb1\xb2\x07\x1e\x02\x02"
  	"\xb2\xb3\x07\x0c\x02\x02\xb3\xb4\x05\x16\x0c\x02\xb4\x13\x03\x02\x02"
  	"\x02\xb5\xd2\x07\x1e\x02\x02\xb6\xd2\x07\x1c\x02\x02\xb7\xd2\x09\x03"
  	"\x02\x02\xb8\xd2\x07\x13\x02\x02\xb9\xd2\x07\x1d\x02\x02\xba\xca\x07"
  	"\x07\x02\x02\xbb\xbc\x05\x14\x0b\x02\xbc\xbd\x07\x16\x02\x02\xbd\xbf"
  	"\x03\x02\x02\x02\xbe\xbb\x03\x02\x02\x02\xbf\xc2\x03\x02\x02\x02\xc0"
  	"\xbe\x03\x02\x02\x02\xc0\xc1\x03\x02\x02\x02\xc1\xc3\x03\x02\x02\x02"
  	"\xc2\xc0\x03\x02\x02\x02\xc3\xc7\x05\x14\x0b\x02\xc4\xc6\x07\x16\x02"
  	"\x02\xc5\xc4\x03\x02\x02\x02\xc6\xc9\x03\x02\x02\x02\xc7\xc5\x03\x02"
  	"\x02\x02\xc7\xc8\x03\x02\x02\x02\xc8\xcb\x03\x02\x02\x02\xc9\xc7\x03"
  	"\x02\x02\x02\xca\xc0\x03\x02\x02\x02\xca\xcb\x03\x02\x02\x02\xcb\xcc"
  	"\x03\x02\x02\x02\xcc\xd2\x07\x0d\x02\x02\xcd\xce\x07\x14\x02\x02\xce"
  	"\xcf\x05\x14\x0b\x02\xcf\xd0\x07\x15\x02\x02\xd0\xd2\x03\x02\x02\x02"
  	"\xd1\xb5\x03\x02\x02\x02\xd1\xb6\x03\x02\x02\x02\xd1\xb7\x03\x02\x02"
  	"\x02\xd1\xb8\x03\x02\x02\x02\xd1\xb9\x03\x02\x02\x02\xd1\xba\x03\x02"
  	"\x02\x02\xd1\xcd\x03\x02\x02\x02\xd2\x15\x03\x02\x02\x02\xd3\xd4\x08"
  	"\x0c\x01\x02\xd4\xf4\x07\x1e\x02\x02\xd5\xf4\x05\x14\x0b\x02\xd6\xee"
  	"\x07\x09\x02\x02\xd7\xda\x05\x06\x04\x02\xd8\xda\x05\x0c\x07\x02\xd9"
  	"\xd7\x03\x02\x02\x02\xd9\xd8\x03\x02\x02\x02\xda\xdb\x03\x02\x02\x02"
  	"\xdb\xdc\x07\x08\x02\x02\xdc\xde\x03\x02\x02\x02\xdd\xd9\x03\x02\x02"
  	"\x02\xde\xe1\x03\x02\x02\x02\xdf\xdd\x03\x02\x02\x02\xdf\xe0\x03\x02"
  	"\x02\x02\xe0\xe4\x03\x02\x02\x02\xe1\xdf\x03\x02\x02\x02\xe2\xe5\x05"
  	"\x06\x04\x02\xe3\xe5\x05\x0c\x07\x02\xe4\xe2\x03\x02\x02\x02\xe4\xe3"
  	"\x03\x02\x02\x02\xe5\xe9\x03\x02\x02\x02\xe6\xe8\x07\x08\x02\x02\xe7"
  	"\xe6\x03\x02\x02\x02\xe8\xeb\x03\x02\x02\x02\xe9\xe7\x03\x02\x02\x02"
  	"\xe9\xea\x03\x02\x02\x02\xea\xed\x03\x02\x02\x02\xeb\xe9\x03\x02\x02"
  	"\x02\xec\xdf\x03\x02\x02\x02\xed\xf0\x03\x02\x02\x02\xee\xec\x03\x02"
  	"\x02\x02\xee\xef\x03\x02\x02\x02\xef\xf1\x03\x02\x02\x02\xf0\xee\x03"
  	"\x02\x02\x02\xf1\xf4\x07\x0e\x02\x02\xf2\xf4\x09\x04\x02\x02\xf3\xd3"
  	"\x03\x02\x02\x02\xf3\xd5\x03\x02\x02\x02\xf3\xd6\x03\x02\x02\x02\xf3"
  	"\xf2\x03\x02\x02\x02\xf4\u0111\x03\x02\x02\x02\xf5\xf6\x0c\x05\x02\x02"
  	"\xf6\xf7\x07\x0a\x02\x02\xf7\u0110\x05\x16\x0c\x06\xf8\xf9\x0c\x07\x02"
  	"\x02\xf9\xfa\x07\x07\x02\x02\xfa\u0110\x07\x0d\x02\x02\xfb\xfc\x0c\x03"
  	"\x02\x02\xfc\u010c\x07\x0b\x02\x02\xfd\xfe\x05\x16\x0c\x02\xfe\xff\x07"
  	"\x16\x02\x02\xff\u0101\x03\x02\x02\x02\u0100\xfd\x03\x02\x02\x02\u0101"
  	"\u0104\x03\x02\x02\x02\u0102\u0100\x03\x02\x02\x02\u0102\u0103\x03\x02"
  	"\x02\x02\u0103\u0105\x03\x02\x02\x02\u0104\u0102\x03\x02\x02\x02\u0105"
  	"\u0109\x05\x16\x0c\x02\u0106\u0108\x07\x16\x02\x02\u0107\u0106\x03\x02"
  	"\x02\x02\u0108\u010b\x03\x02\x02\x02\u0109\u0107\x03\x02\x02\x02\u0109"
  	"\u010a\x03\x02\x02\x02\u010a\u010d\x03\x02\x02\x02\u010b\u0109\x03\x02"
  	"\x02\x02\u010c\u0102\x03\x02\x02\x02\u010c\u010d\x03\x02\x02\x02\u010d"
  	"\u010e\x03\x02\x02\x02\u010e\u0110\x07\x10\x02\x02\u010f\xf5\x03\x02"
  	"\x02\x02\u010f\xf8\x03\x02\x02\x02\u010f\xfb\x03\x02\x02\x02\u0110\u0113"
  	"\x03\x02\x02\x02\u0111\u010f\x03\x02\x02\x02\u0111\u0112\x03\x02\x02"
  	"\x02\u0112\x17\x03\x02\x02\x02\u0113\u0111\x03\x02\x02\x02\x2c\x1c\x1e"
  	"\x26\x2b\x2f\x34\x38\x42\x49\x4c\x4f\x53\x58\x5d\x62\x6a\x6f\x77\x85"
  	"\x89\x93\x9b\x9f\xa2\xa7\xab\xae\xc0\xc7\xca\xd1\xd9\xdf\xe4\xe9\xee"
  	"\xf3\u0102\u0109\u010c\u010f\u0111";

  final Atn atn = AtnSimulator.deserialize(_serializedAtn);

  final PredictionContextCache sharedContextCache = new PredictionContextCache();

  final List<String> tokenNames = [
    "<INVALID>", "'interface'", "'const'", "'true'", "':'", "'['", "';'", 
    "'{'", "'|'", "'<'", "'='", "']'", "'}'", "'extends'", "'>'", "'namespace'", 
    "'export'", "'null'", "'('", "')'", "','", "'false'", "WS", "SINGLE_LINE_COMMENT", 
    "MULTI_LINE_COMMENT", "'?'", "NUM", "STRING", "ID", "OTHER"
  ];

  final List<String> ruleNames = [
    "compilationUnit", "comment", "keyTypePair", "interfaceDecl", "interfaceField", 
    "arrayKeyInterfaceField", "exportNamespaceDecl", "namespaceField", "unionTypeDecl", 
    "expr", "type"
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
      state = 28;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 1, context);
      while (_alt != 1 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1 + 1) {
          state = 26;
          switch (interpreter.adaptivePredict(inputSource, 0, context)) {
            case 1:
              state = 22; 
              interfaceDecl();
              break;
            case 2:
              state = 23; 
              exportNamespaceDecl();
              break;
            case 3:
              state = 24; 
              unionTypeDecl();
              break;
            case 4:
              state = 25;
              matchWildcard();
              break;
          } 
        }
        state = 30;
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
      state = 31;
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
  KeyTypePairContext keyTypePair() {
    var localContext = new KeyTypePairContext(context, state);
    enterRule(localContext, 4, RULE_KEYTYPEPAIR);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 36;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 33; 
        comment();
        state = 38;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 39; 
      match(ID);
      state = 41;
      _la = inputSource.lookAhead(1);
      if (_la == QUESTION) {
        state = 40; 
        match(QUESTION);
      }
      state = 45;
      _la = inputSource.lookAhead(1);
      if (_la == T__17) {
        state = 43; 
        match(T__17);
        state = 44; 
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
    enterRule(localContext, 6, RULE_INTERFACEDECL);
    int _la;
    try {
      var _alt;
      enterOuterAlt(localContext, 1);
      state = 50;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 47; 
        comment();
        state = 52;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 54;
      _la = inputSource.lookAhead(1);
      if (_la == T__5) {
        state = 53; 
        match(T__5);
      }
      state = 56; 
      match(T__20);
      state = 57; 
      match(ID);
      state = 77;
      _la = inputSource.lookAhead(1);
      if (_la == T__12) {
        state = 58; 
        match(T__12);
        state = 74;
        _la = inputSource.lookAhead(1);
        if ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__18) | 
        	(BIG_ONE << T__16) | (BIG_ONE << T__14) | (BIG_ONE << T__4) | (BIG_ONE << T__3) | 
        	(BIG_ONE << T__0) | (BIG_ONE << NUM) | (BIG_ONE << STRING) | (BIG_ONE << ID))) != BIG_ZERO)) {
          state = 64;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(inputSource, 7, context);
          while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 59; 
              localContext.type = type(0);
              localContext.typeArguments.add(localContext.type);
              state = 60; 
              match(T__1); 
            }
            state = 66;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(inputSource, 7, context);
          }
          state = 67; 
          localContext.type = type(0);
          localContext.typeArguments.add(localContext.type);
          state = 71;
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
          while (_la == T__1) {
            state = 68; 
            match(T__1);
            state = 73;
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
          }
        }
        state = 76; 
        match(T__7);
      }
      state = 81;
      _la = inputSource.lookAhead(1);
      if (_la == T__8) {
        state = 79; 
        match(T__8);
        state = 80; 
        localContext.parentType = type(0);
      }
      state = 83; 
      match(T__14);
      state = 96;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__16) | 
      	(BIG_ONE << SINGLE_LINE_COMMENT) | (BIG_ONE << MULTI_LINE_COMMENT) | 
      	(BIG_ONE << ID))) != BIG_ZERO)) {
        state = 86;
        switch (interpreter.adaptivePredict(inputSource, 12, context)) {
          case 1:
            state = 84; 
            interfaceField();
            break;
          case 2:
            state = 85; 
            arrayKeyInterfaceField();
            break;
        }
        state = 91;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
        while (_la == T__15) {
          state = 88; 
          match(T__15);
          state = 93;
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
        }
        state = 98;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 99; 
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
    enterRule(localContext, 8, RULE_INTERFACEFIELD);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 104;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 101; 
        comment();
        state = 106;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 107; 
      match(ID);
      state = 109;
      _la = inputSource.lookAhead(1);
      if (_la == QUESTION) {
        state = 108; 
        match(QUESTION);
      }
      state = 111; 
      match(T__17);
      state = 112; 
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
  ArrayKeyInterfaceFieldContext arrayKeyInterfaceField() {
    var localContext = new ArrayKeyInterfaceFieldContext(context, state);
    enterRule(localContext, 10, RULE_ARRAYKEYINTERFACEFIELD);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 117;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 114; 
        comment();
        state = 119;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 120; 
      match(T__16);
      state = 121; 
      match(ID);
      state = 122; 
      match(T__17);
      state = 123; 
      localContext.keyType = type(0);
      state = 124; 
      match(T__10);
      state = 125; 
      match(T__17);
      state = 126; 
      localContext.valueType = type(0);
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
      state = 131;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 128; 
        comment();
        state = 133;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 135;
      _la = inputSource.lookAhead(1);
      if (_la == T__5) {
        state = 134; 
        match(T__5);
      }
      state = 137; 
      match(T__6);
      state = 138; 
      match(ID);
      state = 139; 
      match(T__14);
      state = 145;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__19) | 
      	(BIG_ONE << T__5) | (BIG_ONE << SINGLE_LINE_COMMENT) | (BIG_ONE << MULTI_LINE_COMMENT) | 
      	(BIG_ONE << ID))) != BIG_ZERO)) {
        state = 140; 
        namespaceField();
        state = 141; 
        match(T__15);
        state = 147;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 148; 
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
      state = 153;
      errorHandler.sync(this);
      _la = inputSource.lookAhead(1);
      while (_la == SINGLE_LINE_COMMENT || _la == MULTI_LINE_COMMENT) {
        state = 150; 
        comment();
        state = 155;
        errorHandler.sync(this);
        _la = inputSource.lookAhead(1);
      }
      state = 157;
      _la = inputSource.lookAhead(1);
      if (_la == T__5) {
        state = 156; 
        match(T__5);
      }
      state = 160;
      _la = inputSource.lookAhead(1);
      if (_la == T__19) {
        state = 159; 
        match(T__19);
      }
      state = 162; 
      match(ID);
      state = 165;
      _la = inputSource.lookAhead(1);
      if (_la == T__17) {
        state = 163; 
        match(T__17);
        state = 164; 
        type(0);
      }
      state = 169;
      _la = inputSource.lookAhead(1);
      if (_la == T__11) {
        state = 167; 
        match(T__11);
        state = 168; 
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
  UnionTypeDeclContext unionTypeDecl() {
    var localContext = new UnionTypeDeclContext(context, state);
    enterRule(localContext, 16, RULE_UNIONTYPEDECL);
    int _la;
    try {
      enterOuterAlt(localContext, 1);
      state = 172;
      _la = inputSource.lookAhead(1);
      if (_la == T__5) {
        state = 171; 
        match(T__5);
      }
      state = 174; 
      match(ID);
      state = 175; 
      localContext.name = match(ID);
      state = 176; 
      match(T__11);
      state = 177; 
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
  ExprContext expr() {
    var localContext = new ExprContext(context, state);
    enterRule(localContext, 18, RULE_EXPR);
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
        case T__18:
        case T__0: 
          localContext = new BoolExprContext(localContext);
          enterOuterAlt(localContext, 3);
          state = 181;
          _la = inputSource.lookAhead(1);
          if (!(_la == T__18 || _la == T__0)) {
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
        case T__16: 
          localContext = new ArrayExprContext(localContext);
          enterOuterAlt(localContext, 6);
          state = 184; 
          match(T__16);
          state = 200;
          _la = inputSource.lookAhead(1);
          if ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__18) | 
          	(BIG_ONE << T__16) | (BIG_ONE << T__4) | (BIG_ONE << T__3) | 
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
          match(T__10); 
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
  TypeContext type([int _p = 0]) {
    var _parentctx = context;
    int _parentState = state;
    var localContext = new TypeContext(context, _parentState);
    var _prevctx = localContext;
    int _startState = 20;
    enterRecursionRule(localContext, 20, RULE_TYPE, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(localContext, 1);
      state = 241;
      switch (interpreter.adaptivePredict(inputSource, 36, context)) {
        case 1:
          localContext = new SimpleTypeContext(localContext);
          context = localContext;
          _prevctx = localContext;

          state = 210; 
          match(ID);
          break;
        case 2:
          localContext = new ExprTypeContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 211; 
          expr();
          break;
        case 3:
          localContext = new ObjectTypeContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 212; 
          match(T__14);
          state = 236;
          errorHandler.sync(this);
          _la = inputSource.lookAhead(1);
          while ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__16) | 
          	(BIG_ONE << SINGLE_LINE_COMMENT) | (BIG_ONE << MULTI_LINE_COMMENT) | 
          	(BIG_ONE << ID))) != BIG_ZERO)) {
            state = 221;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(inputSource, 32, context);
            while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
              if (_alt == 1) {
                state = 215;
                switch (interpreter.adaptivePredict(inputSource, 31, context)) {
                  case 1:
                    state = 213; 
                    keyTypePair();
                    break;
                  case 2:
                    state = 214; 
                    arrayKeyInterfaceField();
                    break;
                }
                state = 217; 
                match(T__15); 
              }
              state = 223;
              errorHandler.sync(this);
              _alt = interpreter.adaptivePredict(inputSource, 32, context);
            }
            state = 226;
            switch (interpreter.adaptivePredict(inputSource, 33, context)) {
              case 1:
                state = 224; 
                keyTypePair();
                break;
              case 2:
                state = 225; 
                arrayKeyInterfaceField();
                break;
            }
            state = 231;
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
            while (_la == T__15) {
              state = 228; 
              match(T__15);
              state = 233;
              errorHandler.sync(this);
              _la = inputSource.lookAhead(1);
            }
            state = 238;
            errorHandler.sync(this);
            _la = inputSource.lookAhead(1);
          }
          state = 239; 
          match(T__9);
          break;
        case 4:
          localContext = new LiteralTypeContext(localContext);
          context = localContext;
          _prevctx = localContext;
          state = 240;
          _la = inputSource.lookAhead(1);
          if (!((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__4) | 
          	(BIG_ONE << NUM) | (BIG_ONE << STRING))) != BIG_ZERO))) {
            errorHandler.recoverInline(this);
          }
          consume();
          break;
      }
      context.stop = inputSource.lookToken(-1);
      state = 271;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(inputSource, 41, context);
      while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = localContext;
          state = 269;
          switch (interpreter.adaptivePredict(inputSource, 40, context)) {
            case 1:
              localContext = new UnionTypeContext(new TypeContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_TYPE);
              state = 243;
              if (!(precedencePredicate(context, 3))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 3)");
              state = 244; 
              match(T__13);
              state = 245; 
              type(4);
              break;
            case 2:
              localContext = new ArrayTypeContext(new TypeContext(_parentctx, _parentState));
              pushNewRecursionContext(localContext, _startState, RULE_TYPE);
              state = 246;
              if (!(precedencePredicate(context, 5))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 5)");
              state = 247; 
              match(T__16);
              state = 248; 
              match(T__10);
              break;
            case 3:
              localContext = new GenericTypeContext(new TypeContext(_parentctx, _parentState));
              localContext.target = _prevctx;
              pushNewRecursionContext(localContext, _startState, RULE_TYPE);
              state = 249;
              if (!(precedencePredicate(context, 1))) 
                throw new FailedPredicateException(this, "precedencePredicate(context, 1)");
              state = 250; 
              match(T__12);
              state = 266;
              _la = inputSource.lookAhead(1);
              if ((((_la) & ~0x3f) == 0 && ((BIG_ONE << _la) & ((BIG_ONE << T__18) | 
              	(BIG_ONE << T__16) | (BIG_ONE << T__14) | (BIG_ONE << T__4) | 
              	(BIG_ONE << T__3) | (BIG_ONE << T__0) | (BIG_ONE << NUM) | 
              	(BIG_ONE << STRING) | (BIG_ONE << ID))) != BIG_ZERO)) {
                state = 256;
                errorHandler.sync(this);
                _alt = interpreter.adaptivePredict(inputSource, 37, context);
                while (_alt != 2 && _alt != Atn.INVALID_ALT_NUMBER) {
                  if (_alt == 1) {
                    state = 251; 
                    localContext.type = type(0);
                    localContext.arguments.add(localContext.type);
                    state = 252; 
                    match(T__1); 
                  }
                  state = 258;
                  errorHandler.sync(this);
                  _alt = interpreter.adaptivePredict(inputSource, 37, context);
                }
                state = 259; 
                localContext.type = type(0);
                localContext.arguments.add(localContext.type);
                state = 263;
                errorHandler.sync(this);
                _la = inputSource.lookAhead(1);
                while (_la == T__1) {
                  state = 260; 
                  match(T__1);
                  state = 265;
                  errorHandler.sync(this);
                  _la = inputSource.lookAhead(1);
                }
              }
              state = 268; 
              match(T__7);
              break;
          } 
        }
        state = 273;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(inputSource, 41, context);
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

  bool semanticPredicate(RuleContext localContext, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 10: return _typeSemanticPredicate(localContext, predIndex);
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

  UnionTypeDeclContext getUnionTypeDecl(int i) => getRuleContext((c) => c is UnionTypeDeclContext, i);

  ExportNamespaceDeclContext getExportNamespaceDecl(int i) => getRuleContext((c) => c is ExportNamespaceDeclContext, i);

  InterfaceDeclContext getInterfaceDecl(int i) => getRuleContext((c) => c is InterfaceDeclContext, i);

  List<ExportNamespaceDeclContext> getExportNamespaceDecls() => getRuleContexts((c) => c is ExportNamespaceDeclContext);

  List<InterfaceDeclContext> getInterfaceDecls() => getRuleContexts((c) => c is InterfaceDeclContext);

  List<UnionTypeDeclContext> getUnionTypeDecls() => getRuleContexts((c) => c is UnionTypeDeclContext);

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

class KeyTypePairContext extends ParserRuleContext {

  KeyTypePairContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_KEYTYPEPAIR;

  TerminalNode getID() => getToken(TsInterfaceParser.ID, 0);

  List<CommentContext> getComments() => getRuleContexts((c) => c is CommentContext);

  CommentContext getComment(int i) => getRuleContext((c) => c is CommentContext, i);

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);

  TerminalNode getQUESTION() => getToken(TsInterfaceParser.QUESTION, 0);

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

  TypeContext type;
  List<TypeContext> typeArguments = new List<TypeContext>();
  TypeContext parentType;

  InterfaceDeclContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_INTERFACEDECL;

  TerminalNode getID() => getToken(TsInterfaceParser.ID, 0);

  List<CommentContext> getComments() => getRuleContexts((c) => c is CommentContext);

  CommentContext getComment(int i) => getRuleContext((c) => c is CommentContext, i);

  List<InterfaceFieldContext> getInterfaceFields() => getRuleContexts((c) => c is InterfaceFieldContext);

  TypeContext getType(int i) => getRuleContext((c) => c is TypeContext, i);

  InterfaceFieldContext getInterfaceField(int i) => getRuleContext((c) => c is InterfaceFieldContext, i);

  List<ArrayKeyInterfaceFieldContext> getArrayKeyInterfaceFields() => getRuleContexts((c) => c is ArrayKeyInterfaceFieldContext);

  List<TypeContext> getTypes() => getRuleContexts((c) => c is TypeContext);

  ArrayKeyInterfaceFieldContext getArrayKeyInterfaceField(int i) => getRuleContext((c) => c is ArrayKeyInterfaceFieldContext, i);

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

class ArrayKeyInterfaceFieldContext extends ParserRuleContext {

  TypeContext keyType;
  TypeContext valueType;

  ArrayKeyInterfaceFieldContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_ARRAYKEYINTERFACEFIELD;

  TerminalNode getID() => getToken(TsInterfaceParser.ID, 0);

  List<CommentContext> getComments() => getRuleContexts((c) => c is CommentContext);

  CommentContext getComment(int i) => getRuleContext((c) => c is CommentContext, i);

  TypeContext getType(int i) => getRuleContext((c) => c is TypeContext, i);

  List<TypeContext> getTypes() => getRuleContexts((c) => c is TypeContext);

  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterArrayKeyInterfaceField(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitArrayKeyInterfaceField(this);
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

class UnionTypeDeclContext extends ParserRuleContext {

  Token name;

  UnionTypeDeclContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_UNIONTYPEDECL;

  List<TerminalNode> getIDs() => getTokens(TsInterfaceParser.ID);

  TerminalNode getID(int i) => getToken(TsInterfaceParser.ID, i);

  TypeContext getType() => getRuleContext((c) => c is TypeContext, 0);

  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterUnionTypeDecl(this);
  }

  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitUnionTypeDecl(this);
  }
}

class ExprContext extends ParserRuleContext {

  ExprContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_EXPR;
 
  ExprContext.from(ExprContext context) : super.from(context) {
  }
}

class TypeContext extends ParserRuleContext {

  TypeContext(ParserRuleContext parent, int invokingState) : super(parent, invokingState);

  int get ruleIndex => TsInterfaceParser.RULE_TYPE;
 
  TypeContext.from(TypeContext context) : super.from(context) {
  }
}

class BoolExprContext extends ExprContext {
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
}class ArrayTypeContext extends TypeContext {
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
  List<ArrayKeyInterfaceFieldContext> getArrayKeyInterfaceFields() => getRuleContexts((c) => c is ArrayKeyInterfaceFieldContext);
  List<KeyTypePairContext> getKeyTypePairs() => getRuleContexts((c) => c is KeyTypePairContext);
  ArrayKeyInterfaceFieldContext getArrayKeyInterfaceField(int i) => getRuleContext((c) => c is ArrayKeyInterfaceFieldContext, i);
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

class ExprTypeContext extends TypeContext {
  ExprContext getExpr() => getRuleContext((c) => c is ExprContext, 0);
  ExprTypeContext(TypeContext context) : super.from(context);
  void enterRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.enterExprType(this);
  }
  void exitRule(ParseTreeListener listener) {
    if (listener is TsInterfaceListener) 
      listener.exitExprType(this);
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
}