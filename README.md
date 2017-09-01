
## Experiemental for Developing Roku Channels in the Browser


## Usage 

`$ npm install -g git@gitlab.eng.roku.com:mtaylor/rokujs.git`
`$ js2bs -o <outDir> -i <inpDir> <file|direcory>`


## Components
- brightscript.js - A command line utility to transpile javascript to brightscript
- sceneGraph.js - A set of Moon.js web components to render Roku Scene Graph XML pages in the browser
- rokuGlobals.js - Javascript utilities to emulte Brightscript globals
- helloWeb - Hello World Roku Channel in Javascript 
- helloRoku - Hello World Roku Channel in Brightscript
- Fixtures  - All ES6 Javscript syntax fixtures.
## Status

- Transpiler makes a reasonable attempt to transpile most es6 idioms into brightscript
- Some JS expressions like import and switch and throw still need Work
- Work on converting web component projects and global JS utilities has not started.