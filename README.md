FullScreenDetector
==================

Determine whether a full-screen application is currently active, and get notifications when switching between full screen apps and regular Spaces.

This little library is the result of much banging of foreheads and gnashing of teeth -- OS X does not expose this information in a particularly obvious way.

Usage
=====

Add MDCFullScreenDetector.h and MDCFullScreenDetector.m to your project. Add a new NSWindow to your MainMenu.xib and change its class to MDCFullScreenDetector.

Notifications
-------------

MDCFullScreenDetector posts two notifications to [[NSNotificationCenter defaultCenter]](https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/Foundation/Classes/NSNotificationCenter_Class/Reference/Reference.html#//apple_ref/occ/clm/NSNotificationCenter/defaultCenter):

- kMDCFullScreenDetectorSwitchedToFullScreenApp, when switching to a full screen app
- kMDCFullScreenDetectorSwitchedToRegularSpace, when switching to a regular Space

When switching between two full screen apps, or two regular Spaces, no notification will be posted. If you need to know this, see [NSWorkspaceActiveSpaceDidChangeNotification](https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/ApplicationKit/Classes/NSWorkspace_Class/Reference/Reference.html#//apple_ref/c/data/NSWorkspaceActiveSpaceDidChangeNotification).

Methods
-------

`- (BOOL)fullScreenAppIsActive` -- returns YES if a full screen app is currently active, and NO if a regular Space is currently active.

Demo
====
Although the demo is currently Mountain Lion only, the library itself should work fine on Lion (todo: actually test it).

Open the included Xcode project and run FullScreenDetector. Notifications will pop up in Notification Center when switching between full screen apps and regular Spaces.

License
=======
All of the code here was written by [@shinypb](https://twitter.com/shinypb). I hereby release it into the public domain, although I'd love to hear what you build with it.

Special thanks to [@anathemalie](https://twitter.com/anathemalie) and [@siegel](https://twitter.com/siegel) for listening to me complain about this for so long, and [@skid](https://twitter.com/skid) for his kind but ultimately unsuccessful suggestion. :)