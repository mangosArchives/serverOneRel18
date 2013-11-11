CHANGELOG for 0.18.x
====================

This changelog references the relevant changes (bug and security fixes) done
in 0.19 minor versions.

* 0.19 (2014-07-xx)

Major changes for this build which require your attention when upgrading include
awesome things such as these:

 * The *mangos-one* build system has been overhauled, and we are now using CMake
   only. For Linux and FreeBSD users this means you can *always* use packages as
   provided by your distribution, and for Windows users this means you'll now
   have to download and install dependencies just once. Build times for all of
   the supported platforms should have noticeable reduced.
 * The tools for map extraction and generation from the game client are finally
   first class citizens when you build *mangos-one*, and will be built, too.
 * SOAP bindings for the world server are now optional, and will be disabled by
   default when building *mangos-one*. If you need them, there is a CMake switch
   available to enable the bindings.
 * Documentation has been rewritten and converted to **Markdown** format, which
   is readable and converts nicely to HTML when viewing in the repository browser.
 * EventAI is now more verbose, and will validate targets for commands upon server
   start-up. It's very likely that you will see many more errors now. Additionally
   the `npc aiinfo` command will display more useful info.
 * Merged scripts directly to core repository.

Also numerous minor fixes and improvements have been added, such as:

 * Using potions for power types not used by a class will now raise the correct
   error messages, e.g. Warriors can no longer consume Mana potions.
 * Hunter pets will receive full experience when their masters are grouped.
 * The world server will now provide improved, readable output on start-up, and
   less confusing messages for indentical issues.
 * In-game commands `goname` and `namego` have been replaced with `appear` and
   `summon`. If you happen to find other commands with weird naming, let us know!
