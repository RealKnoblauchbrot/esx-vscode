import { Uri } from "vscode";

const scriptSides = {
    SERVER: ["serverside", "server", "sv_"],
    CLIENT: ["clientside", "client", "cl_"]
}

export function getPathScriptSide(path: Uri) {
    for (const [key, values] of Object.entries(scriptSides)) {
        if (values.some(value => path.fsPath.includes(value))) {
            return key;
        }
    }
    return "SHARED";
}

export function getEvents(side: string) {

}
