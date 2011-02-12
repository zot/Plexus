Ringojs might be a good alternative to node.js, because it supports real threads and shared memory (not just copying around, like WebWorkers).  JS engines are heading toward this, but they're not there, yet.  Maybe we can keep Plexus bound to cC for a while until shared memory/threads really works in browsers?

[ringojs](http://www.ringojs.org)
[node.js](http://nodejs.org/)


Check rhino's impl of Array string properties -- maybe AMT nodes should be arrays with properties (already using @bitset, though, so  it probably doesn't matter)

Started modifying Coffeescript to generate Lua in addition to JavaScript.  Lua supports pthreads -- just need to make an actor implementation for Lua (probably port FJ's, since that works).  LuaNode may be a good platform for it if Plexus doesn't end up in the same process as cC.
