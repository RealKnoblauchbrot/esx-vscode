import * as vscode from "vscode";
import { events } from "./events";
import { enableLinting } from "./lib";

export const extensionId = "knoblauchbrot.esx-vscode";

export async function activate(context: vscode.ExtensionContext) {
  enableLinting(true)

  events.forEach(event => {
    context.subscriptions.push(event)
  })
}

export function deactivate() {
  enableLinting(false) // Doesn't work because process is already killed 🤷‍♂️
  
}
