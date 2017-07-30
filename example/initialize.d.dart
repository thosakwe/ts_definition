class InitializeParams {
  num processId;

  String rootPath;

  String rootUri;

  dynamic initializationOptions;

  ClientCapabilities capabilities;

  String trace;

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

class WorkspaceClientCapabilities {
  bool applyEdit;

  WorkspaceClientCapabilitiesWorkspaceEdit workspaceEdit;

  WorkspaceClientCapabilitiesDidChangeConfiguration didChangeConfiguration;

  WorkspaceClientCapabilitiesDidChangeWatchedFiles didChangeWatchedFiles;

  WorkspaceClientCapabilitiesSymbol symbol;

  WorkspaceClientCapabilitiesExecuteCommand executeCommand;

  WorkspaceClientCapabilities(
      {this.applyEdit,
      this.workspaceEdit,
      this.didChangeConfiguration,
      this.didChangeWatchedFiles,
      this.symbol,
      this.executeCommand});

  static WorkspaceClientCapabilities parse(Map map) {
    return new WorkspaceClientCapabilities(
        applyEdit: map['applyEdit'],
        workspaceEdit: map['workspaceEdit'] is! Map
            ? null
            : WorkspaceClientCapabilitiesWorkspaceEdit
                .parse(map['workspaceEdit']),
        didChangeConfiguration: map['didChangeConfiguration'] is! Map
            ? null
            : WorkspaceClientCapabilitiesDidChangeConfiguration
                .parse(map['didChangeConfiguration']),
        didChangeWatchedFiles: map['didChangeWatchedFiles'] is! Map
            ? null
            : WorkspaceClientCapabilitiesDidChangeWatchedFiles
                .parse(map['didChangeWatchedFiles']),
        symbol: map['symbol'] is! Map
            ? null
            : WorkspaceClientCapabilitiesSymbol.parse(map['symbol']),
        executeCommand: map['executeCommand'] is! Map
            ? null
            : WorkspaceClientCapabilitiesExecuteCommand
                .parse(map['executeCommand']));
  }

  Map<String, dynamic> toJson() {
    return {
      'applyEdit': applyEdit,
      'workspaceEdit': workspaceEdit?.toJson(),
      'didChangeConfiguration': didChangeConfiguration?.toJson(),
      'didChangeWatchedFiles': didChangeWatchedFiles?.toJson(),
      'symbol': symbol?.toJson(),
      'executeCommand': executeCommand?.toJson()
    };
  }
}

class TextDocumentClientCapabilities {
  TextDocumentClientCapabilitiesSynchronization synchronization;

  TextDocumentClientCapabilitiesCompletion completion;

  TextDocumentClientCapabilitiesHover hover;

  TextDocumentClientCapabilitiesSignatureHelp signatureHelp;

  TextDocumentClientCapabilitiesReferences references;

  TextDocumentClientCapabilitiesDocumentHighlight documentHighlight;

  TextDocumentClientCapabilitiesDocumentSymbol documentSymbol;

  TextDocumentClientCapabilitiesFormatting formatting;

  TextDocumentClientCapabilitiesRangeFormatting rangeFormatting;

  TextDocumentClientCapabilitiesOnTypeFormatting onTypeFormatting;

  TextDocumentClientCapabilitiesDefinition definition;

  TextDocumentClientCapabilitiesCodeAction codeAction;

  TextDocumentClientCapabilitiesCodeLens codeLens;

  TextDocumentClientCapabilitiesDocumentLink documentLink;

  TextDocumentClientCapabilitiesRename rename;

  TextDocumentClientCapabilities(
      {this.synchronization,
      this.completion,
      this.hover,
      this.signatureHelp,
      this.references,
      this.documentHighlight,
      this.documentSymbol,
      this.formatting,
      this.rangeFormatting,
      this.onTypeFormatting,
      this.definition,
      this.codeAction,
      this.codeLens,
      this.documentLink,
      this.rename});

  static TextDocumentClientCapabilities parse(Map map) {
    return new TextDocumentClientCapabilities(
        synchronization: map['synchronization'] is! Map
            ? null
            : TextDocumentClientCapabilitiesSynchronization
                .parse(map['synchronization']),
        completion: map['completion'] is! Map
            ? null
            : TextDocumentClientCapabilitiesCompletion.parse(map['completion']),
        hover: map['hover'] is! Map
            ? null
            : TextDocumentClientCapabilitiesHover.parse(map['hover']),
        signatureHelp: map['signatureHelp'] is! Map
            ? null
            : TextDocumentClientCapabilitiesSignatureHelp
                .parse(map['signatureHelp']),
        references: map['references'] is! Map
            ? null
            : TextDocumentClientCapabilitiesReferences.parse(map['references']),
        documentHighlight: map['documentHighlight'] is! Map
            ? null
            : TextDocumentClientCapabilitiesDocumentHighlight
                .parse(map['documentHighlight']),
        documentSymbol: map['documentSymbol'] is! Map
            ? null
            : TextDocumentClientCapabilitiesDocumentSymbol
                .parse(map['documentSymbol']),
        formatting: map['formatting'] is! Map
            ? null
            : TextDocumentClientCapabilitiesFormatting.parse(map['formatting']),
        rangeFormatting: map['rangeFormatting'] is! Map
            ? null
            : TextDocumentClientCapabilitiesRangeFormatting
                .parse(map['rangeFormatting']),
        onTypeFormatting: map['onTypeFormatting'] is! Map
            ? null
            : TextDocumentClientCapabilitiesOnTypeFormatting
                .parse(map['onTypeFormatting']),
        definition: map['definition'] is! Map
            ? null
            : TextDocumentClientCapabilitiesDefinition.parse(map['definition']),
        codeAction: map['codeAction'] is! Map
            ? null
            : TextDocumentClientCapabilitiesCodeAction.parse(map['codeAction']),
        codeLens: map['codeLens'] is! Map
            ? null
            : TextDocumentClientCapabilitiesCodeLens.parse(map['codeLens']),
        documentLink: map['documentLink'] is! Map
            ? null
            : TextDocumentClientCapabilitiesDocumentLink
                .parse(map['documentLink']),
        rename: map['rename'] is! Map
            ? null
            : TextDocumentClientCapabilitiesRename.parse(map['rename']));
  }

  Map<String, dynamic> toJson() {
    return {
      'synchronization': synchronization?.toJson(),
      'completion': completion?.toJson(),
      'hover': hover?.toJson(),
      'signatureHelp': signatureHelp?.toJson(),
      'references': references?.toJson(),
      'documentHighlight': documentHighlight?.toJson(),
      'documentSymbol': documentSymbol?.toJson(),
      'formatting': formatting?.toJson(),
      'rangeFormatting': rangeFormatting?.toJson(),
      'onTypeFormatting': onTypeFormatting?.toJson(),
      'definition': definition?.toJson(),
      'codeAction': codeAction?.toJson(),
      'codeLens': codeLens?.toJson(),
      'documentLink': documentLink?.toJson(),
      'rename': rename?.toJson()
    };
  }
}

class ClientCapabilities {
  WorkspaceClientCapabilities workspace;

  TextDocumentClientCapabilities textDocument;

  dynamic experimental;

  ClientCapabilities({this.workspace, this.textDocument, this.experimental});

  static ClientCapabilities parse(Map map) {
    return new ClientCapabilities(
        workspace: map['workspace'] is! Map
            ? null
            : WorkspaceClientCapabilities.parse(map['workspace']),
        textDocument: map['textDocument'] is! Map
            ? null
            : TextDocumentClientCapabilities.parse(map['textDocument']),
        experimental: map['experimental']);
  }

  Map<String, dynamic> toJson() {
    return {
      'workspace': workspace?.toJson(),
      'textDocument': textDocument?.toJson(),
      'experimental': experimental
    };
  }
}

class WorkspaceClientCapabilitiesWorkspaceEdit {
  /**
         * The client supports versioned document changes in `WorkspaceEdit`s
         */
  bool documentChanges;

  WorkspaceClientCapabilitiesWorkspaceEdit({this.documentChanges});

  static WorkspaceClientCapabilitiesWorkspaceEdit parse(Map map) {
    return new WorkspaceClientCapabilitiesWorkspaceEdit(
        documentChanges: map['documentChanges']);
  }

  Map<String, dynamic> toJson() {
    return {'documentChanges': documentChanges};
  }
}

class WorkspaceClientCapabilitiesDidChangeConfiguration {
  /**
         * Did change configuration notification supports dynamic registration.
         */
  bool dynamicRegistration;

  WorkspaceClientCapabilitiesDidChangeConfiguration({this.dynamicRegistration});

  static WorkspaceClientCapabilitiesDidChangeConfiguration parse(Map map) {
    return new WorkspaceClientCapabilitiesDidChangeConfiguration(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class WorkspaceClientCapabilitiesDidChangeWatchedFiles {
  /**
         * Did change watched files notification supports dynamic registration.
         */
  bool dynamicRegistration;

  WorkspaceClientCapabilitiesDidChangeWatchedFiles({this.dynamicRegistration});

  static WorkspaceClientCapabilitiesDidChangeWatchedFiles parse(Map map) {
    return new WorkspaceClientCapabilitiesDidChangeWatchedFiles(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class WorkspaceClientCapabilitiesSymbol {
  /**
         * Symbol request supports dynamic registration.
         */
  bool dynamicRegistration;

  WorkspaceClientCapabilitiesSymbol({this.dynamicRegistration});

  static WorkspaceClientCapabilitiesSymbol parse(Map map) {
    return new WorkspaceClientCapabilitiesSymbol(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class WorkspaceClientCapabilitiesExecuteCommand {
  /**
         * Execute command supports dynamic registration.
         */
  bool dynamicRegistration;

  WorkspaceClientCapabilitiesExecuteCommand({this.dynamicRegistration});

  static WorkspaceClientCapabilitiesExecuteCommand parse(Map map) {
    return new WorkspaceClientCapabilitiesExecuteCommand(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesSynchronization {
  /**
         * Whether text document synchronization supports dynamic registration.
         */
  bool dynamicRegistration;

  /**
         * The client supports sending will save notifications.
         */
  bool willSave;

  /**
         * The client supports sending a will save request and
         * waits for a response providing text edits which will
         * be applied to the document before it is saved.
         */
  bool willSaveWaitUntil;

  /**
         * The client supports did save notifications.
         */
  bool didSave;

  TextDocumentClientCapabilitiesSynchronization(
      {this.dynamicRegistration,
      this.willSave,
      this.willSaveWaitUntil,
      this.didSave});

  static TextDocumentClientCapabilitiesSynchronization parse(Map map) {
    return new TextDocumentClientCapabilitiesSynchronization(
        dynamicRegistration: map['dynamicRegistration'],
        willSave: map['willSave'],
        willSaveWaitUntil: map['willSaveWaitUntil'],
        didSave: map['didSave']);
  }

  Map<String, dynamic> toJson() {
    return {
      'dynamicRegistration': dynamicRegistration,
      'willSave': willSave,
      'willSaveWaitUntil': willSaveWaitUntil,
      'didSave': didSave
    };
  }
}

class TextDocumentClientCapabilitiesCompletion {
  /**
         * Whether completion supports dynamic registration.
         */
  bool dynamicRegistration;

  /**
         * The client supports the following `CompletionItem` specific
         * capabilities.
         */
  TextDocumentClientCapabilitiesCompletionCompletionItem completionItem;

  TextDocumentClientCapabilitiesCompletion(
      {this.dynamicRegistration, this.completionItem});

  static TextDocumentClientCapabilitiesCompletion parse(Map map) {
    return new TextDocumentClientCapabilitiesCompletion(
        dynamicRegistration: map['dynamicRegistration'],
        completionItem: map['completionItem'] is! Map
            ? null
            : TextDocumentClientCapabilitiesCompletionCompletionItem
                .parse(map['completionItem']));
  }

  Map<String, dynamic> toJson() {
    return {
      'dynamicRegistration': dynamicRegistration,
      'completionItem': completionItem?.toJson()
    };
  }
}

class TextDocumentClientCapabilitiesCompletionCompletionItem {
  /**
             * Client supports snippets as insert text.
             *
             * A snippet can define tab stops and placeholders with `$1`, `$2`
             * and `${3:foo}`. `$0` defines the final tab stop, it defaults to
             * the end of the snippet. Placeholders with equal identifiers are linked,
             * that is typing in one will update others too.
             */
  bool snippetSupport;

  TextDocumentClientCapabilitiesCompletionCompletionItem({this.snippetSupport});

  static TextDocumentClientCapabilitiesCompletionCompletionItem parse(Map map) {
    return new TextDocumentClientCapabilitiesCompletionCompletionItem(
        snippetSupport: map['snippetSupport']);
  }

  Map<String, dynamic> toJson() {
    return {'snippetSupport': snippetSupport};
  }
}

class TextDocumentClientCapabilitiesHover {
  /**
         * Whether hover supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesHover({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesHover parse(Map map) {
    return new TextDocumentClientCapabilitiesHover(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesSignatureHelp {
  /**
         * Whether signature help supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesSignatureHelp({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesSignatureHelp parse(Map map) {
    return new TextDocumentClientCapabilitiesSignatureHelp(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesReferences {
  /**
         * Whether references supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesReferences({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesReferences parse(Map map) {
    return new TextDocumentClientCapabilitiesReferences(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesDocumentHighlight {
  /**
         * Whether document highlight supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesDocumentHighlight({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesDocumentHighlight parse(Map map) {
    return new TextDocumentClientCapabilitiesDocumentHighlight(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesDocumentSymbol {
  /**
         * Whether document symbol supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesDocumentSymbol({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesDocumentSymbol parse(Map map) {
    return new TextDocumentClientCapabilitiesDocumentSymbol(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesFormatting {
  /**
         * Whether formatting supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesFormatting({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesFormatting parse(Map map) {
    return new TextDocumentClientCapabilitiesFormatting(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesRangeFormatting {
  /**
         * Whether range formatting supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesRangeFormatting({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesRangeFormatting parse(Map map) {
    return new TextDocumentClientCapabilitiesRangeFormatting(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesOnTypeFormatting {
  /**
         * Whether on type formatting supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesOnTypeFormatting({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesOnTypeFormatting parse(Map map) {
    return new TextDocumentClientCapabilitiesOnTypeFormatting(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesDefinition {
  /**
         * Whether definition supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesDefinition({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesDefinition parse(Map map) {
    return new TextDocumentClientCapabilitiesDefinition(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesCodeAction {
  /**
         * Whether code action supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesCodeAction({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesCodeAction parse(Map map) {
    return new TextDocumentClientCapabilitiesCodeAction(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesCodeLens {
  /**
         * Whether code lens supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesCodeLens({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesCodeLens parse(Map map) {
    return new TextDocumentClientCapabilitiesCodeLens(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesDocumentLink {
  /**
         * Whether document link supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesDocumentLink({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesDocumentLink parse(Map map) {
    return new TextDocumentClientCapabilitiesDocumentLink(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}

class TextDocumentClientCapabilitiesRename {
  /**
         * Whether rename supports dynamic registration.
         */
  bool dynamicRegistration;

  TextDocumentClientCapabilitiesRename({this.dynamicRegistration});

  static TextDocumentClientCapabilitiesRename parse(Map map) {
    return new TextDocumentClientCapabilitiesRename(
        dynamicRegistration: map['dynamicRegistration']);
  }

  Map<String, dynamic> toJson() {
    return {'dynamicRegistration': dynamicRegistration};
  }
}
