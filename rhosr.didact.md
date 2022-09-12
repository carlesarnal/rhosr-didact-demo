# Red Hat Openshift Service Registry (RHOSR) Interactive Demo

## Pre-requisites

#### Tools

This demo guide a tool that may not be installed in your machine:
* [rhoas cli](https://github.com/redhat-developer/app-services-cli)

#### 1. Log in to Red Hat Cloud

All the commands on this demo will be executed on a terminal:

[Open a new terminal](didact://?commandId=workbench.action.terminal.new)

Login to the Red Hat Cloud

([^ execute](didact://?commandId=vscode.didact.sendNamedTerminalAString&text=newTerminal$$rhoas%20login))

#### 2. Create RHOSR instance

Execute the following command to create an instance named rhosr-tutorial
 ([^ execute](didact://?commandId=vscode.didact.sendNamedTerminalAString&text=newTerminal$$rhoas%20service-registry%20create%20--name%20rhosr-tutorial%0A))

Wait for the instance to be ready ([^ execute](didact://?commandId=vscode.didact.sendNamedTerminalAString&text=newTerminal$$./wait_instance.sh))

#### 3. Create artifact

Create an artifact in the newly created instance ([^ execute](didact://?commandId=vscode.didact.sendNamedTerminalAString&text=newTerminal$$rhoas%20service-registry%20artifact%20create%20--type=OPENAPI%20--artifact-id=SmokeArtifact%20--file=oai.json))

#### 4. Get artifact by coordinates

Get the newly create artifact using it's coordinates ([^ execute](didact://?commandId=vscode.didact.sendNamedTerminalAString&text=newTerminal$$rhoas%20service-registry%20artifact%20get%20--artifact-id=SmokeArtifact))

#### 5. List instance artifacts

List the artifacts from the newly created instance ([^ execute](didact://?commandId=vscode.didact.sendNamedTerminalAString&text=newTerminal$$rhoas%20service-registry%20artifact%20list))

#### 6. Delete RHOSR instance

Delete the RHOSR instance (Cleaning up the environment) ([^ execute](didact://?commandId=vscode.didact.sendNamedTerminalAString&text=newTerminal$$rhoas%20service-registry%20delete%20--yes))
