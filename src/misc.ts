import { CompletionItem } from 'vscode';
import { Uri } from "vscode";
import { completionItems } from './items';


const scriptSides = {
    SERVER: ["serverside", "server", "sv_"],
    CLIENT: ["clientside", "client", "cl_"]
}

export function getPathScriptSide(path: Uri): string {
    for (const [key, values] of Object.entries(scriptSides)) {
        if (values.some(value => path.fsPath.includes(value))) {
            return key;
        }
    }
    return "SHARED";
}

type HandlerType = 'EVENT' | 'CALLBACK';

const existingHandlers: {[key in HandlerType]: string[]} = {
    EVENT: [
        "TriggerEvent",
        "AddEventHandler",
        "RegisterNetEvent",
        "TriggerClientEvent",
        "TriggerServerEvent",
        ".triggerEvent", // xPlayer.triggerEvent
    ],
    CALLBACK: [
        "TriggerServerCallback",
        "TriggerClientCallback"
    ]
}

export function hasTwoOrLessQuotes(str: string): boolean {
    return [...str].filter(char => char === "'" || char === '"' || char === '`').length <= 2;
}

export function findHandler(input: string): [HandlerType, string] | null {
    for (const [key, handlers] of Object.entries(existingHandlers)) {
        const handler = handlers.find(h => input.includes(h));
        if (handler) {
            return [key as HandlerType, handler];
        }
    }
    return null;
}

// export function getParamCompletions(line: string): CompletionItem[] {
//     const keys = Object.keys(completionItems);
//     const validCompletions: CompletionItem[] = [];

//     return validCompletions
// }
