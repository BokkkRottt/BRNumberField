//
//  AppDelegate.m
//  BRNumberFormatter
//
//  Created by Yang on 3/3/16.
//  Copyright © 2016 sgyang. All rights reserved.
//

#import "AppDelegate.h"
#import "BRNumberField.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    BRNumberField * numberField = [[BRNumberField alloc] initWithFrame:NSMakeRect(192, 100, 96, 22)];
    numberField.max = 9999;
    numberField.placeholderString = @"0 - 9999";
    [self.window.contentView addSubview:numberField];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
