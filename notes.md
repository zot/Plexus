Ringojs might be a good alternative to node.js, because it supports real threads and shared memory (not just copying around, like WebWorkers).  JS engines are heading toward this, but they're not there, yet.  Maybe we can keep Plexus bound to cC for a while until shared memory/threads really works in browsers?

[ringojs](http://www.ringojs.org)
[node.js](http://nodejs.org/)


Check rhino's impl of Array string properties -- maybe AMT nodes should be arrays with properties (already using @bitset, though, so  it probably doesn't matter)

Started modifying Coffeescript to generate Lua in addition to JavaScript.  Lua supports pthreads -- just need to make an actor implementation for Lua (probably port FJ's, since that works).  LuaNode may be a good platform for it if Plexus doesn't end up in the same process as cC.

Building Second Life
Got fmod 3.75 here: http://www.fmod.org/files/fmod3/
copied fmodapi375linux/api/inc/* to libraries/include
copied fmodapi375linux/api/libfmod-3.75.so to libraries/i686-linux/lib_release_client
Fixed line 196 and 197 of indra/llui/tests/llurlentry_stub.cpp, added cast to char*


Kirstensviewer

WARNINGS:
CMake Warning at newview/CMakeLists.txt:1445 (add_executable):
  Cannot generate a safe linker search path for target Kirstens-S21 because
  files in some directories may conflict with libraries in implicit
  directories:

    link library [libGLU.so] in /usr/lib may be hidden by files in:
      /Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/lib_release_client

  Some of these libraries may not be found correctly.


[100%] Generating ./secondlife-symbols-linux.tar.bz2
generate_breakpad_symbols run with args: ('RELEASE', '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged', 'do-not-directly-run-kirstens-s21-bin SLPlugin', '*.so*', '/Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/bin/dump_syms', '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/./secondlife-symbols-linux.tar.bz2')
dumping module '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libaprutil-1.so.0' with '/Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/bin/dump_syms'...
dumping module '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libsndfile.so.1' with '/Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/bin/dump_syms'...
/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libsndfile.so.1: file contains no debugging information (no ".stab" or ".debug_info" sections)
Failed to write symbol file.
warning: failed to dump symbols for '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libsndfile.so.1': None
dumping module '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libcrypto.so.0.9.8' with '/Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/bin/dump_syms'...
/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libcrypto.so.0.9.8: file contains no debugging information (no ".stab" or ".debug_info" sections)
Failed to write symbol file.
warning: failed to dump symbols for '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libcrypto.so.0.9.8': None
dumping module '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libuuid.so.1' with '/Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/bin/dump_syms'...
/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libuuid.so.1: file contains no debugging information (no ".stab" or ".debug_info" sections)
Failed to write symbol file.
warning: failed to dump symbols for '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libuuid.so.1': None
dumping module '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libdb-4.2.so' with '/Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/bin/dump_syms'...
/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libdb-4.2.so: file contains no debugging information (no ".stab" or ".debug_info" sections)
Failed to write symbol file.
warning: failed to dump symbols for '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libdb-4.2.so': None
dumping module '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libortp.so' with '/Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/bin/dump_syms'...
/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libortp.so: file contains no debugging information (no ".stab" or ".debug_info" sections)
Failed to write symbol file.
warning: failed to dump symbols for '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libortp.so': None
dumping module '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libssl.so.0.9.8' with '/Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/bin/dump_syms'...
/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libssl.so.0.9.8: file contains no debugging information (no ".stab" or ".debug_info" sections)
Failed to write symbol file.
warning: failed to dump symbols for '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libssl.so.0.9.8': None
dumping module '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libalut.so' with '/Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/bin/dump_syms'...
/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libalut.so: file contains no debugging information (no ".stab" or ".debug_info" sections)
Failed to write symbol file.
warning: failed to dump symbols for '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libalut.so': None
dumping module '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libexpat.so.1' with '/Depot/sandbox/kirstensviewer/test/S21/indra/../libraries/i686-linux/bin/dump_syms'...
/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libexpat.so.1: file contains no debugging information (no ".stab" or ".debug_info" sections)
Failed to write symbol file.
warning: failed to dump symbols for '/Depot/sandbox/kirstensviewer/test/S21/indra/viewer-linux-i686-release/newview/packaged/lib/libexpat.so.1': None


ERRORS
md5sum check FAILED: /Depot/sandbox/kirstensviewer/test/S21/indra/../scripts/messages/message_template.msg
