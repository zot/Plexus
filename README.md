Intro
====
Plexus is an "advanced" programming project. This is for people (like me) who want to learn some advanced things or get more practical experience with them. It's not "just" to make a cool game. So, if you're more interested in having a cool game than learning advanced techniques, stay away. You won't like this project (except maybe as a player). I'll be focusing on functional programming and other advanced techniques. Along the way, I'll need to modify CubeCreate and I'll contribute the code back (just like I always do). Here are a few things I'd like to see:

* many worlds from a single server; players can easily create and destroy worlds and hop from one to another
* "society of mind" style [game actor control](thinkingAhead.md), dynamically distributed among the players' game engines

    I'd like to explore some concurrent, model-based reasoning here, probably using actors
    1. start exploring possibilities, based on some "complex" reasoning involving the player's state, etc.
    1. go until it reaches a decision point that could have more than one alternative
    1. at that point, create actors for the alternatives; each actor can change its own version of the world
    1. the world is a HAMT, so "changes" don't affect the other actors' models
    1. the output is a much simpler decision tree
* natural language processing for decent text entry
* both visual and auditory information propagation: I'd like to be able to create an object and send it to everything that could "see it" or "hear it". This is like "line of sight" vs "area of effect", for information (i.e. events)
* visual portals, like "magic mirrors" -- a video screen that you can walk or shoot through
* Tools for moderated games; control rooms with "voodoo dolls" that you can use to affect player objects
* Tools for remote tabletop role playing
* Tools to support spectator sports, like "human golf", where players launch themselves towards targets surrounded with dangerous terrain (our prototypes were great fun to watch)
* A Git-based, rsync/bittorrent information distribution system that supports efficient transfer, versioning, and strong cryptography to verify authorship (so people can't steal credit)
* A lot of other things I've written about before, which you can find on http://blog.plubble.com/, if you're motivated 

I'm planning to do as much as I can in Rhino, using functional techniques, but some things would depend heavily on cC mods, like visual and auditory information propagation and visual portals, for instance. Some of these things can be done completely in cC, and I'm happy to do that (and I'm happy for other projects to do them as well).  Why Rhino and not Node.js?  Because part of the coolness of functional programming is how it handles concurrency and Rhino supports multithreaded code with shared memory.  Node.js doesn't -- even with WebWorkers, you don't get shared memory; it copies messages around.  Since I want to share megabytes of memory, that's not really a good option for me.  Node.js could be be made to work, if each worker kept its own separate copy of the state of the world and they each got all of the changes and updated their own worlds (to an identical state), but since Rhino can completely avoid all of that extra work, I think Rhino makes more sense, even though it's slower than Node.js.

NOTE: I'm experimenting with modifying Coffeescript to generate both Lua and JavaScript.  If this works, I'll be deploying the initial version in Lua, since it's faster than Rhino and supports threads and shared memory.

For me, the point is writing the code, teaching, and learning.

Flow
====
1. game senses event (from user, net, or clock)
1. the game calls update(event, incomingCubeChanges, currentState) -> (nextState, outgoingCubeChanges)
1. game installs nextState and sends outgoingCubeChanges to CubeCreate


Info
====
Here is the [Plexus git repo](https://github.com/zot/Plexus)

Here is my [Coffeescript git fork](https://github.com/zot/coffee-script/tree/mocoffee) with the 'mofor' construct

Here is the [Xus git repo](https://github.com/zot/Xus/tree/xus2)

Here is the [CubeCreate git fork](https://github.com/zot/CubeCreate/tree/plexus)

Here is the Wikipedia article on [Functional Programming](http://en.wikipedia.org/wiki/Functional_programming)


Milestone 1: Two Guys in a Box
====
### CubeCreate Connectivity
* Port socket code from sauer mods to CubeCreate
    * code uses "mysocket" in engine/main.cpp and remote/remote.cpp
* Write socket handler in JS
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

