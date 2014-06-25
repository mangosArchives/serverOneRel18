MaNGOS One [![Build Status](https://travis-ci.org/mangosone/server.png)](https://travis-ci.org/mangosone/server)
===========
*MaNGOS One* is a full featured server for [World of Warcraft][2], in its vanilla
version supporting clients from the [patch 2.4.3][50] branch, specifically patch
2.4.3.

World of Warcraft, and all World of Warcraft or Warcraft art, images, and lore are
copyrighted by [Blizzard Entertainment, Inc.][1].


Build status
------------
Each update to the *MaNGOS One* sources is run through build tests using the
Travis CI build service. The current build status can be viewed on the *MaNGOS One*
[build status page][114], and for your convenience the build status also is shown
at the top of this README when viewing the repository on [github][111]. If it's
green, a successful build has been performed under Linux.


Requirements
------------
*mangos-zero* server stands on the shoulders of well-known Open Source
libraries, and a few awesome, but less known libraries to prevent us from
inventing the wheel again.

*Please note that Linux and Mac OS X users should install packages using
their systems package management instead of source packages.*

* **MySQL** / **PostgreSQL**: to store content, and user data, we rely on
  [MySQL][40]/[MariaDB][41] and [PostgreSQL][42] to handle data.
* **ACE**: the [ADAPTIVE Communication Environment][43] aka. *ACE* provides us
  with a solid cross-platform framework for abstracting operating system
  specific details.
* **Recast**: in order to create navigation data from the client's map files,
  we use [Recast][44] to do the dirty work. It provides functions for
  rendering, pathing, etc.
* **G3D**: the [G3D][45] engine provides the basic framework for handling 3D
  data, and is used to handle basic map data.
* **libmpq**: [libmpq][46] provides an abstraction layer for reading from the
  client's data files.
* **Zlib**: [Zlib][53] ([Zlib for Windows][51]) provides compression algorithms
  used in both MPQ archive handling and the client/server protocol.
* **Bzip2**: [Bzip2][54] ([Bzip2 for Windows][52]) provides compression
  algorithms used in MPQ archives.
* **OpenSSL**: [OpenSSL][48] ([OpenSSL for Windows][55]) provides encryption
  algorithms used when authenticating clients.
* **Lua**: [Lua 5.1][56] ([Lua 5.1 for Windows][57]) provides a convenient, fast
  scripting environment, which allows us to make live changes to scripted
  content.

*Recast*, *G3D* and *libmpq* are included in the *mangos-zero* distribution as
we rely on specific versions.

Optional dependencies
---------------------

* **Doxygen**: if you want to export HTML or PDF formatted documentation for the
  *mangos-zero* API, you should install [Doxygen][49].
* **Lua**: if you want to test drive how *mangos-zero* feels with [Lua][50] as
  scripting language instead of the scripting library, you will need Lua **5.1.x**
  installed.

Discuss
-------
If you need help with building and installing *mangos-zero* there is thousands
of users out there already running *mangos-zero* and many you can find on


Compilation Guides
------------------
Please see our compilation and installation guides at our [Wiki][20]

License
-------
*MaNGOS One* is open source, and licensed under the terms of the GNU GPL version 2.

  Copyright (C) 2005-2014  MaNGOS <http://getmangos.eu>

  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 2 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

  You can find the full license text in the file COPYING delivered with this
  package.

### Exceptions to GPL

  Some third-party libraries MaNGOS uses have other licenses, that must be
  uphold.  These libraries are located within the dep/ directory

  In addition, as a special exception, MaNGOS gives permission to link the code
  of its release of MaNGOS with the OpenSSL project's "OpenSSL" library
  (or with modified versions of it that use the same license as the "OpenSSL"
  library), and distribute the linked executables. You must obey the GNU
  General Public License in all respects for all of the code used other than
  "OpenSSL".

[1]: http://blizzard.com/ "Blizzard Entertainment Inc. · we love you!"
[2]: http://blizzard.com/games/wow/ "World of Warcraft · Classic / Vanilla"
[3]: http://wowpedia.org/Beta#World_of_Warcraft "World of Warcraft - Classic Beta"
[4]: http://www.wowpedia.org/Patch_1.12.0 "Vanilla WoW · Patch 1.12.0 release notes"
[5]: http://www.wowpedia.org/Patch_1.12.1 "Vanilla WoW · Patch 1.12.1 release notes"
[6]: http://www.wowpedia.org/Patch_1.12.2 "Vanilla WoW · Patch 1.12.2 release notes"
[7]: http://www.cppreference.com/ "C / C++ reference"

[10]: http://getmangos.eu/ "mangos · project site"
[11]: http://community.getmangos.co.uk/ "mangos · discussion forums"
[12]: http://github.com/mangoszero "mangos-zero · github organization"
[13]: http://github.com/mangoszero/server "mangos zero · server repository"
[14]: http://github.com/mangoszero/scripts "mangos zero · script extensions repository"
[15]: http://github.com/mangoszero/database "mangos zero · content database repository"
[16]: https://travis-ci.org/mangoszero/server "Travis CI · mangos-zero build status"
[17]: https://scan.coverity.com/ "Coverity Scan · Static Code Analysis"

[19]: http://www.cmake.org/ "CMake · Cross Platform Make"
[20]: http://windows.microsoft.com/ "Microsoft Windows · that OS, yes."
[21]: http://www.debian.org/ "Debian · The Universal Operating System"
[22]: http://www.ubuntu.com/ "Ubuntu · The world's most popular free OS"
[23]: http://www.freebsd.org/ "FreeBSD · The Power To Serve"
[24]: http://www.netbsd.org/ "NetBSD · The NetBSD Project"
[25]: http://www.openbsd.org/ "OpenBSD · Free, functional and secure"
[26]: http://www.dragonflybsd.org/ "DragonFlyBSD"

[30]: http://www.microsoft.com/visualstudio/eng/ "Visual Studio 2012"
[31]: http://www.microsoft.com/visualstudio/eng/products/visual-studio-express-products "Visual Studio Express 2012 for Windows Desktop"
[32]: http://www.microsoft.com/en-us/download/details.aspx?id=8279 "Windows SDK for Windows 7 and .NET Framework 4"
[33]: http://clang.llvm.org/ "clang · a C language family frontend for LLVM"
[34]: http://git-scm.com/ "Git · Distributed version control system"
[35]: http://windows.github.com/ "github · windows client"
[36]: http://www.sourcetreeapp.com/ "SourceTree · Free Mercurial and Git Client for Windows/Mac"

[40]: http://www.mysql.com/ "MySQL · The world's most popular open source database"
[41]: http://www.mariadb.org/ "MariaDB · An enhanced, drop-in replacement for MySQL"
[42]: http://www.postgresql.org/ "PostgreSQL · The world's most advanced open source database"
[43]: http://www.cs.wustl.edu/~schmidt/ACE.html "ACE · The ADAPTIVE Communication Environment"
[44]: http://github.com/memononen/recastnavigation "Recast · Navigation-mesh Toolset for Games"
[45]: http://sourceforge.net/projects/g3d/ "G3D · G3D Innovation Engine"
[46]: http://github.com/ge0rg/libmpq "libmpq · A library for reading data from MPQ archives"
[48]: http://www.openssl.org/ "OpenSSL · The Open Source toolkit for SSL/TLS"
[49]: http://www.stack.nl/~dimitri/doxygen/ "Doxygen · API documentation generator"
[50]: http://www.lua.org/ "Lua · The Programming Language"
[51]: http://gnuwin32.sourceforge.net/packages/zlib.htm "Zlib for Windows"
[52]: http://gnuwin32.sourceforge.net/packages/bzip2.htm "Bzip2 for Windows"
[53]: http://www.zlib.net/ "Zlib"
[54]: http://www.bzip.org/ "Bzip2"
[55]: http://slproweb.com/products/Win32OpenSSL.html "OpenSSL for Windows"
[56]: http://www.lua.org/ "Lua"
[57]: https://code.google.com/p/luaforwindows/ "Lua for Windows"
