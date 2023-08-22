# drumbot

Hack project inspired by and using various parts of [musicbot](https://github.com/bearpelican/musicautobot/blob/master/musicautobot/music_transformer/transform.py).

To run on Windows you will need:

- An Nvidia GPU with latest drivers installed
- Docker Desktop
- WSL2

Any files you put in the `src` folder will be available to the Docker container and the Jupyter server.

You will need to create a folder `src/MIDI` and place your MIDI files in there. I got mine from [this](https://archive.org/details/themagicofmidiv1) Internet Archive collection.

To build an image and create a container from it, execute `docker compose up`.

In the terminal output you will see the URL of the running Jupyter server which you can click to open the Jupyter Lab GUI in a browser.

Alternatively you can copy it and use as the kernel of a [Polyglot Notebooks](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.dotnet-interactive-vscode) session directly from VSCode, however I found exceptions were thrown when trying to load audio output from cells.