//
//  MDCAppDelegate.m
//  FullScreenDetector
//
//  Created by Mark Christian on 1/19/13.
//  Copyright (c) 2013 Mark Christian. All rights reserved.
//
/*
 @shinypb invisible dummy window of kUtilityWindowClass + kHIWindowBitHideOnFullScreen to tell if front app has menubar. Ugly but worked…

 */

#import "MDCAppDelegate.h"

@implementation MDCAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(switchedToFullScreenApp:) name:kMDCFullScreenDetectorSwitchedToFullScreenApp object:nil];
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(switchedToRegularSpace:) name:kMDCFullScreenDetectorSwitchedToRegularSpace object:nil];
}

- (void)showNotification:(NSString *)message {
  NSLog(@"%@", message);
  NSUserNotification *notification = [[NSUserNotification alloc] init];
  notification.title = @"Full Screen Status Changed";
  notification.informativeText = message;
  notification.soundName = nil;

  [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
}

- (void)switchedToFullScreenApp:(NSNotification *)n {
  [self showNotification:@"On a full screen app"];
}

- (void)switchedToRegularSpace:(NSNotification *)n {
  [self showNotification:@"On a regular space"];
}

@end
