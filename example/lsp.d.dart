class CompletionOptions {
  bool resolveProvider;

  List<String> triggerCharacters;

  CompletionOptions({this.resolveProvider, this.triggerCharacters});

  static CompletionOptions parse(Map map) {
    return new CompletionOptions(
        resolveProvider: map['resolveProvider'],
        triggerCharacters: map['triggerCharacters']);
  }

  Map<String, dynamic> toJson() {
    return {
      'resolveProvider': resolveProvider,
      'triggerCharacters': triggerCharacters
    };
  }
}

class CodeLensOptions {
  bool resolveProvider;

  CodeLensOptions({this.resolveProvider});

  static CodeLensOptions parse(Map map) {
    return new CodeLensOptions(resolveProvider: map['resolveProvider']);
  }

  Map<String, dynamic> toJson() {
    return {'resolveProvider': resolveProvider};
  }
}

class DocumentOnTypeFormattingOptions {
  String firstTriggerCharacter;

  List<String> moreTriggerCharacter;

  DocumentOnTypeFormattingOptions(
      {this.firstTriggerCharacter, this.moreTriggerCharacter});

  static DocumentOnTypeFormattingOptions parse(Map map) {
    return new DocumentOnTypeFormattingOptions(
        firstTriggerCharacter: map['firstTriggerCharacter'],
        moreTriggerCharacter: map['moreTriggerCharacter']);
  }

  Map<String, dynamic> toJson() {
    return {
      'firstTriggerCharacter': firstTriggerCharacter,
      'moreTriggerCharacter': moreTriggerCharacter
    };
  }
}

class DocumentLinkOptions {
  bool resolveProvider;

  DocumentLinkOptions({this.resolveProvider});

  static DocumentLinkOptions parse(Map map) {
    return new DocumentLinkOptions(resolveProvider: map['resolveProvider']);
  }

  Map<String, dynamic> toJson() {
    return {'resolveProvider': resolveProvider};
  }
}

class ExecuteCommandOptions {
  List<String> commands;

  ExecuteCommandOptions({this.commands});

  static ExecuteCommandOptions parse(Map map) {
    return new ExecuteCommandOptions(commands: map['commands']);
  }

  Map<String, dynamic> toJson() {
    return {'commands': commands};
  }
}

/**
 * Defines how the host (editor) should sync document changes to the language server.
 */
abstract class TextDocumentSyncKind {
  /**
     * Documents should not be synced at all.
     */
  static const num None = 0;

  /**
     * Documents are synced by always sending the full content
     * of the document.
     */
  static const num Full = 1;

  /**
     * Documents are synced by sending the full content on open.
     * After that only incremental updates to the document are
     * send.
     */
  static const num Incremental = 2;
}
