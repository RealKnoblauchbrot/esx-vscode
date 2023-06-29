import * as vscode from "vscode";
import { setExternalLibrary } from "./lib";
import { getPathScriptSide } from "./misc";

export const events = [
  vscode.workspace.onDidChangeConfiguration(async e => {
    const extensionConfig = vscode.workspace.getConfiguration();
    if (e.affectsConfiguration('fivem-esx.esx-addons')) {
      const addons: object = Object(extensionConfig.get('fivem-esx.esx-addons'));
      for (const [key, value] of Object.entries(addons)) {
        await setExternalLibrary(`addons/${key}.lua`, value)
      }
    }
    if (e.affectsConfiguration('fivem-esx.libraries')) {
      const addons: object = Object(extensionConfig.get('fivem-esx.libraries'));
      for (const [key, value] of Object.entries(addons)) {
        await setExternalLibrary(`libraries/${key}.lua`, value)
      }
    }
  }),

  vscode.languages.registerCompletionItemProvider(['lua'], {
    provideCompletionItems(document, position, token, context) {
      const lineText = document.lineAt(position).text;
      const scriptSide = getPathScriptSide(document.uri);
      
      switch (scriptSide) {
        case "CLIENT":
          if (lineText.includes('TriggerEvent') || lineText.includes('AddEventHandler') || lineText.includes('RegisterNetEvent')) {
            return 
          }
          break;
      
        default:
          break;
      }


      return undefined;
    },
    
  })

  // TODO: Experiment with performance when changing client-/serversided libraries on text editor change
  // vscode.window.onDidChangeVisibleTextEditors(async e => {
  //   const fileName = e[0].document.fileName
  //   const isServerSide = fileName.includes("server");
  //   const isClientSide = fileName.includes("client");
  //   // ???
  //   return undefined;
  // })
];



