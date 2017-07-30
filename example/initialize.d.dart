class InitializeParams {
  dynamic processId;

  dynamic rootPath;

  dynamic rootUri;

  dynamic initializationOptions;

  ClientCapabilities capabilities;

  dynamic trace;

  InitializeParams(
      {this.processId,
      this.rootPath,
      this.rootUri,
      this.initializationOptions,
      this.capabilities,
      this.trace});

  static InitializeParams parse(Map map) {
    return new InitializeParams(
        processId: map['processId'],
        rootPath: map['rootPath'],
        rootUri: map['rootUri'],
        initializationOptions: map['initializationOptions'],
        capabilities: map['capabilities'] is! Map
            ? null
            : ClientCapabilities.parse(map['capabilities']),
        trace: map['trace']);
  }

  Map<String, dynamic> toJson() {
    return {
      'processId': processId,
      'rootPath': rootPath,
      'rootUri': rootUri,
      'initializationOptions': initializationOptions,
      'capabilities': capabilities?.toJson(),
      'trace': trace
    };
  }
}

class ClientCapabilities {
  dynamic workspace;

  dynamic textDocument;

  dynamic experimental;

  ClientCapabilities({this.workspace, this.textDocument, this.experimental});

  static ClientCapabilities parse(Map map) {
    return new ClientCapabilities(
        workspace: map['workspace'],
        textDocument: map['textDocument'],
        experimental: map['experimental']);
  }

  Map<String, dynamic> toJson() {
    return {
      'workspace': workspace,
      'textDocument': textDocument,
      'experimental': experimental
    };
  }
}
