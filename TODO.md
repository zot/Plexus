CURRENT
=======
* MILESTONE: Two guys in a box
* Lua object model for avatar properties -- read and write x, y, z, roll, pitch, yaw
* Hook location changes into Lua model
* Wire hooks to output over socket

NEXT
====
* remote object script replacement (like rdist for objects)
   * there's about a dozen objects i have to edit, open their contents, open up each script, copy & paste the script, then save (compile) it
   * at several points along the way, i have to stop, pick up a copy of an object, then put that copy into the contents of another object
   * the UUID of all the existing objects in world will stay fixed, but obviously when i take a copy, that copy will get a new UUID and that's what has to be xferred

---

DONE
====
* 2011-0315-1230 BILL make plexus an aggregate repo:
   * controller
   * xus
   * mocoffee
   * kirstensviewer
* 2011-0314-0000 BILL Port old socket code to viewer and hook into event loop -- viewer executes socket Lua commands now
* 2011-0228-1100 BILL graft LuaJIT into Kirstensviewer
* 2011-0223-2245 BILL controller connection code

---

DEFERRED
========
* integrate luajit the "right way" using cmake
    probably using add_library(luajit STATIC IMPORTED) and setting the IMPORTED_LOCATION property
    [cmake manual](http://www.cmake.org/cmake/help/cmake-2-8-docs.html#command:add_library)
