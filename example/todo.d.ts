/**
 * Arbitrary comments that will also appear in the generated Dart source. :)
 */
export namespace TodoState {
    export const INCOMPLETE = 0;

    /// Another arbitrary comment.
    export const IN_PROGRESS = 1;

    /**
     * If we preserve comments, then we can preserve documentation...
     * @type {number}
     */
    export const COMPLETED:number = 2;
}

interface TodoList {
    name:string;
}

interface Todo {
    name: string;

    status: {
        /**
         * The state of this to-do item.
         */
        state: number
    };

    lists:TodoList[];
}

let x:Todo = {
    name: 'Hello',
    status: {
        state: TodoState.COMPLETED
    },
    lists: [
        {name: 'hello'}
    ]
};