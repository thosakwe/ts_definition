/**
 * Defines how the host (editor) should sync document changes to the language server.
 */
export namespace TextDocumentSyncKind {
    /**
     * Documents should not be synced at all.
     */
    export const None = 0;

    /**
     * Documents are synced by always sending the full content
     * of the document.
     */
    export const Full = 1;

    /**
     * Documents are synced by sending the full content on open.
     * After that only incremental updates to the document are
     * send.
     */
    export const Incremental = 2;
}

/**
 * Completion options.
 */
export interface CompletionOptions {
    /**
     * The server provides support to resolve additional
     * information for a completion item.
     */
    resolveProvider?: boolean;

    /**
     * The characters that trigger completion automatically.
     */
    triggerCharacters?: string[];
}

/**
 * Code Lens options.
 */
export interface CodeLensOptions {
    /**
     * Code lens has a resolve provider as well.
     */
    resolveProvider?: boolean;
}

/**
 * Format document on type options
 */
export interface DocumentOnTypeFormattingOptions {
    /**
     * A character on which formatting should be triggered, like `}`.
     */
    firstTriggerCharacter: string;

    /**
     * More trigger characters.
     */
    moreTriggerCharacter?: string[];
}

/**
 * Document link options
 */
export interface DocumentLinkOptions {
    /**
     * Document links have a resolve provider as well.
     */
    resolveProvider?: boolean;
}

/**
 * Execute command options.
 */
export interface ExecuteCommandOptions {
    /**
     * The commands to be executed on the server
     */
    commands: string[]
}