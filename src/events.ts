import * as vscode from "vscode";
import { setExternalLibrary } from "./lib";



export const events = [
  vscode.workspace.onDidChangeConfiguration(async e => {
    if (e.affectsConfiguration('fivem-esx.esx-addons')) {
      const extensionConfig = vscode.workspace.getConfiguration();
      const addons: object = Object(extensionConfig.get("fivem-esx.esx-addons"));
      for (const [key, value] of Object.entries(addons)) {
        await setExternalLibrary(`addons/${key}.lua`, value)
      }
    }
  }),

  // Can't find a way to identify client, server, shared scripts
  // vscode.workspace.onDidSaveTextDocument(e => {
  //   const changedFileName = e.fileName;
  //   if (changedFileName.endsWith('fxmanifest.lua') || changedFileName.endsWith('__resource.lua')) {
  //     // save files that are client-, shared-, server- sided
  //     // every time a file is focused load that module

  //   }
  // })
];



