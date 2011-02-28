CURRENT
=======
* MILESTONE: Two guys in a box
* Port old socket code to viewer and hook into event loop
* Lua object model for avatar properties -- read and write x, y, z, roll, pitch, yaw
* Hook location changes into Lua model
* Wire hooks to output over socket

NEXT
====

---

DONE
====
* 2011-0223-2245 BILL controller connection code
* 2011-0228-1100 BILL graft LuaJIT into Kirstensviewer

---

DEFERRED
========
* integrate luajit the "right way" using cmake
    probably using add_library(luajit STATIC IMPORTED) and setting the IMPORTED_LOCATION property
    [cmake manual](http://www.cmake.org/cmake/help/cmake-2-8-docs.html#command:add_library)
