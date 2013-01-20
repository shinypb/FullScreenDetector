//
//  MDCAppDelegate.h
//  FullScreenDetector
//
//  Created by Mark Christian on 1/19/13.
//  Copyright (c) 2013 Mark Christian. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MDCDetectorWindow.h"

@interface MDCAppDelegate : NSObject

- (void)showNotification:(NSString *)message;
- (void)switchedToFullScreenApp:(NSNotification *)n;
- (void)switchedToRegularSpace:(NSNotification *)n;

@end
