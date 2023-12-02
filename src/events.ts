import * as vscode from "vscode";
import { setExternalLibrary } from "./lib";
// import { getPathScriptSide, hasTwoOrLessQuotes, findHandler } from "./misc";
// import { completionItems } from "./items";

const CompletionActivators = {
    SINGLE_QUOTE: `'`,
    DOUBLE_QUOTE: `"`,
    TICK: '`',
    COMMA: ',',
};





export const events = [
    vscode.workspace.onDidChangeConfiguration(async e => {
        const extensionConfig = vscode.workspace.getConfiguration();
        if (e.affectsConfiguration('fivem-esx.esx-addons')) {
            const addons: object = Object(extensionConfig.get('esx-vscode.esx-addons'));
            for (const [key, value] of Object.entries(addons)) {
                await setExternalLibrary(`addons/${key}.lua`, value)
            }
        }
        if (e.affectsConfiguration('fivem-esx.libraries')) {
            const addons: object = Object(extensionConfig.get('esx-vscode.libraries'));
            for (const [key, value] of Object.entries(addons)) {
                await setExternalLibrary(`libraries/${key}.lua`, value)
            }
        }
    }),

    // vscode.languages.registerCompletionItemProvider(['lua'], {
    //     provideCompletionItems(document, position, token, context) {
    //         const line = document.lineAt(position).text.substring(0, position.character);
    //         return getParamCompletions(line);
    //     },
    // },
    // CompletionActivators.COMMA
    // ),

    // Credit: Stuyk/altv-crc on Github (Got the Idea when I saw their vscode plugin)
    // TODO: Add linting / completion for events and callbacks
    // vscode.languages.registerCompletionItemProvider(['lua'], {
    //     provideCompletionItems(document, position, token, context) {
    //         const lineText = document.lineAt(position).text;
    //         let scriptSide = getPathScriptSide(document.uri);

    //         const result = findHandler(lineText)

    //         if (!result) return;
    //         const [handlerType, handler] = result;

    //         if (!hasTwoOrLessQuotes(lineText) || !handler) return;
    //         if (lineText.includes("TriggerClientEvent")) scriptSide = "CLIENT";
    //         if (lineText.includes("TriggerServerEvent")) scriptSide = "SERVER";

    //         let validEmits: vscode.CompletionItem[] = []

    //         let possibleEmits = { ...completionItems[handlerType][scriptSide], ...(handlerType == "EVENT" ? completionItems.EVENT.SHARED : {}) }

    //         for (let key of Object.keys(possibleEmits)) {
    //             validEmits.push(new vscode.CompletionItem(key, vscode.CompletionItemKind.Event))
    //         }
    //         return validEmits;
    //     },

    // },
    // CompletionActivators.SINGLE_QUOTE,
    // CompletionActivators.DOUBLE_QUOTE,
    // CompletionActivators.TICK
    // )

    // TODO: Experiment with performance when changing client-/serversided libraries on text editor change
    // vscode.window.onDidChangeVisibleTextEditors(async e => {
    //   const fileName = e[0].document.fileName
    //   const isServerSide = fileName.includes("server");
    //   const isClientSide = fileName.includes("client");
    //   // ???
    //   return undefined;
    // })
];



