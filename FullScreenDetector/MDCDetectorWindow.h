//
//  MDCDetectorWindow.h
//  FullScreenDetector
//
//  Created by Mark Christian on 1/19/13.
//  Copyright (c) 2013 Mark Christian. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#pragma mark Notifications
extern NSString * kMDCFullScreenDetectorSwitchedToFullScreenApp;
extern NSString * kMDCFullScreenDetectorSwitchedToRegularSpace;

@interface MDCDetectorWindow : NSWindow {
  BOOL fullScreenAppIsActive;
}

#pragma mark - Notification handlers
- (void)activeSpaceDidChange:(NSNotification *)notification;
- (void)applicationDidFinishLaunching:(NSNotification *)notification;

#pragma mark - Detecting full screen state
- (void)updateFullScreenStatus;

@end
