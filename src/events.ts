import * as vscode from "vscode";
import { setExternalLibrary } from "./lib";



export const events = [
  vscode.workspace.onDidChangeConfiguration(e => {
    if (e.affectsConfiguration('fivem-esx.ox_inventory')) {
      const state: boolean = Boolean(vscode.workspace.getConfiguration().get('fivem-esx.ox_inventory'));
      setExternalLibrary("ox_inventory", state);
    }
  }),

  vscode.workspace.onDidSaveTextDocument(e => {
    const changedFileName = e.fileName;
    if (changedFileName.endsWith('fxmanifest.lua') || changedFileName.endsWith('__resource.lua')) {
      // save files that are client-, shared-, server- sided
      // every time a file is focused load that module

    }
  })
];



