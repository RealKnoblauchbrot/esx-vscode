import * as vscode from "vscode";
import { events } from "./events";
import { enableLibraries } from "./lib";

export const extensionId = "knoblauchbrot.esx-vscode";

export async function activate(context: vscode.ExtensionContext) {
  enableLibraries()

  events.forEach(event => {
    context.subscriptions.push(event)
  })
}



export function deactivate() {
  
}
