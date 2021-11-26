Run the following commands

Make sure vscode and remote-containers extension are installed


`git clone https://github.com/jbreiding/potential-goggles.git dev  && code dev`

After the window loads, acknowledge the notification to open the workspace.

In the console for `/workspace` run

`docker-compose -f .devcontainer/docker-compose.yml up`

In the browser goto `http://localhost:8080/`
