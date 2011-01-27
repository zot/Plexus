Flow
====
1. game senses event (from user, net, or clock)
1. the game calls update(event, incomingCubeChanges, currentState) -> (nextState, outgoingCubeChanges)
1. game installs nextState and sends outgoingCubeChanges to CubeCreate


Info
====
Here is the [Plexus git repo](https://github.com/zot/Plexus)

Here is the [CubeCreate git fork](https://github.com/zot/CubeCreate/tree/plexus)

Here is the [Coffeescript git fork](https://github.com/zot/coffee-script/tree/mocoffee)

Milestone 1: Two Guys in a Box
====
### CubeCreate Connectivity
* Port socket code from sauer mods to CubeCreate
    * code uses "mysocket" in engine/main.cpp and remote/remote.cpp
* Write socket handler node.js
* each message from CubeCreate to Plexus is a JSON object, followed by a newline: [msg, arg, arg, arg]\n
* each message from Plexus to CubeCreate is a lua expression (containing no newlines), followed by a newline: print('hello\nthere')\n

### Functional Programming Support
mod Coffeescript with "\_\_FUNCTIONAL\_\_" tag: \_\_FUNCTIONAL\_\_ precedes a program and disallows secondary assignments or assignments to properties outside of constructors

This allows you to make "pure" or "impure" files.  It doesn't preclude calling impure code from pure functions, but we could add support for that if desired (there would be a runtime peanalty, I think), by marking functions as "pure" and checking for that before you call a function.

### Xus connectivity
* Make sure Xus is up and running properly
* Instructions for running Xus locally for testing
* Fill out xus.coffee

### Reactive model
* state stored in HAMT
* impure wrapper around functional code
    * [nextState, newNetworkEvents, newCubeCreateChanges] = engine(currentState, networkEvents, cubeCreateEvents)
    * store nextState
    * send network events out
    * apply new cube create changes

### Two Guys in a Box
* A room with two guys
* transmit movement and orientation using Xus
* reflect transmission in CubeCreate

