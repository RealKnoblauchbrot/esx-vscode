import * as vscode from "vscode";

import { join as pathJoin } from "path";
import { extensionId } from "./extension";


function getExtensionPath(extensionId: string) {
  let path = !process.env.VSCODE_DEBUG_MODE ? __dirname.slice(0, __dirname.length - 5) : vscode.extensions.getExtension(extensionId)?.extensionPath;
  return path;
}

export async function setExternalLibrary(folder: string, enable: boolean) {
  const extensionPath = getExtensionPath(extensionId);
  const folderPath = pathJoin(extensionPath!, "Lua", folder);
  const config = vscode.workspace.getConfiguration("Lua");
  const library: string[] | undefined = config.get("workspace.library");

  if (library && extensionPath) {
    // remove any older versions of our path e.g. "publisher.name-0.0.1"
    for (let i = library.length - 1; i >= 0; i--) {
      const el = library[i];
      const isSelfExtension = el.indexOf(extensionId) > -1;
      const isCurrentVersion = el.indexOf(extensionPath) > -1;
      if (isSelfExtension && !isCurrentVersion && !process.env.VSCODE_DEBUG_MODE) {
        library.splice(i, 1);
      }
    }

    const index = library.indexOf(folderPath);

    if (enable) {
      if (index === -1) {
        library.push(folderPath);
      }
    } else {
      if (index > -1) {
        library.splice(index, 1);
      }
    }

    await config.update("workspace.library", library, true);
    return
  }
}

export async function enableLibraries() {
  await setExternalLibrary("misc", true)
  await setExternalLibrary("esx", true)

  const extensionConfig = vscode.workspace.getConfiguration();
  const addons: object = Object(extensionConfig.get("fivem-esx.esx-addons"));
  for (const [key, value] of Object.entries(addons)) {
    await setExternalLibrary(`addons/${key}.lua`, value)
  }
} 

// Doesn't seem to be able to edit the config when stopping vscode?
export function disableLbraries() {
  setExternalLibrary("misc", false)
  setExternalLibrary("esx", false)

  const extensionConfig = vscode.workspace.getConfiguration();
  const addons: object = Object(extensionConfig.get("fivem-esx.esx-addons"));
  for (const [key, value] of Object.entries(addons)) {
    setExternalLibrary(`addons/${key}.lua`, false)
  }
}