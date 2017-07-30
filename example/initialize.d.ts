// This comment won't be preserved, because Dart doesn't have union types.
type DocumentUri = string | null;

export interface InitializeParams {
    processId: number | null;

    rootPath?: DocumentUri;

    rootUri: DocumentUri;

    initializationOptions?: any;

    capabilities: ClientCapabilities;

    trace?: 'off' | 'messages' | 'verbose';
}

/**
 * Workspace specific client capabilities.
 */
export interface WorkspaceClientCapabilities {
    /**
     * The client supports applying batch edits to the workspace by supporting
     * the request 'workspace/applyEdit'
     */
    applyEdit?: boolean;

    /**
     * Capabilities specific to `WorkspaceEdit`s
     */
    workspaceEdit?: {
        /**
         * The client supports versioned document changes in `WorkspaceEdit`s
         */
        documentChanges?: boolean;
    };

    /**
     * Capabilities specific to the `workspace/didChangeConfiguration` notification.
     */
    didChangeConfiguration?: {
        /**
         * Did change configuration notification supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `workspace/didChangeWatchedFiles` notification.
     */
    didChangeWatchedFiles?: {
        /**
         * Did change watched files notification supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `workspace/symbol` request.
     */
    symbol?: {
        /**
         * Symbol request supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `workspace/executeCommand` request.
     */
    executeCommand?: {
        /**
         * Execute command supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };
}

/**
 * Text document specific client capabilities.
 */
export interface TextDocumentClientCapabilities {

    synchronization?: {
        /**
         * Whether text document synchronization supports dynamic registration.
         */
        dynamicRegistration?: boolean;

        /**
         * The client supports sending will save notifications.
         */
        willSave?: boolean;

        /**
         * The client supports sending a will save request and
         * waits for a response providing text edits which will
         * be applied to the document before it is saved.
         */
        willSaveWaitUntil?: boolean;

        /**
         * The client supports did save notifications.
         */
        didSave?: boolean;
    }

    /**
     * Capabilities specific to the `textDocument/completion`
     */
    completion?: {
        /**
         * Whether completion supports dynamic registration.
         */
        dynamicRegistration?: boolean;

        /**
         * The client supports the following `CompletionItem` specific
         * capabilities.
         */
        completionItem?: {
            /**
             * Client supports snippets as insert text.
             *
             * A snippet can define tab stops and placeholders with `$1`, `$2`
             * and `${3:foo}`. `$0` defines the final tab stop, it defaults to
             * the end of the snippet. Placeholders with equal identifiers are linked,
             * that is typing in one will update others too.
             */
            snippetSupport?: boolean;
        }
    };

    /**
     * Capabilities specific to the `textDocument/hover`
     */
    hover?: {
        /**
         * Whether hover supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/signatureHelp`
     */
    signatureHelp?: {
        /**
         * Whether signature help supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/references`
     */
    references?: {
        /**
         * Whether references supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/documentHighlight`
     */
    documentHighlight?: {
        /**
         * Whether document highlight supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/documentSymbol`
     */
    documentSymbol?: {
        /**
         * Whether document symbol supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/formatting`
     */
    formatting?: {
        /**
         * Whether formatting supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/rangeFormatting`
     */
    rangeFormatting?: {
        /**
         * Whether range formatting supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/onTypeFormatting`
     */
    onTypeFormatting?: {
        /**
         * Whether on type formatting supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/definition`
     */
    definition?: {
        /**
         * Whether definition supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/codeAction`
     */
    codeAction?: {
        /**
         * Whether code action supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/codeLens`
     */
    codeLens?: {
        /**
         * Whether code lens supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/documentLink`
     */
    documentLink?: {
        /**
         * Whether document link supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };

    /**
     * Capabilities specific to the `textDocument/rename`
     */
    rename?: {
        /**
         * Whether rename supports dynamic registration.
         */
        dynamicRegistration?: boolean;
    };
}

interface ClientCapabilities {
    /**
     * Workspace specific client capabilities.
     */
    workspace?: WorkspaceClientCapabilities;

    /**
     * Text document specific client capabilities.
     */
    textDocument?: TextDocumentClientCapabilities;

    /**
     * Experimental client capabilities.
     */
    experimental?: any;
}
