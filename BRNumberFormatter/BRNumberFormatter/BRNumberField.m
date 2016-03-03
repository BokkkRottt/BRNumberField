//
//  BRNumberField.m
//  BRNumberFormatter
//
//  Created by Yang on 3/3/16.
//  Copyright © 2016 sgyang. All rights reserved.
//

#import "BRNumberField.h"
#import "BRNumberFormatter.h"

@implementation BRNumberField
@dynamic max;

- (instancetype)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    [super setFormatter:[[BRNumberFormatter alloc] init]];
    [(NSTextFieldCell*)self.cell setAllowedInputSourceLocales:@[NSAllRomanInputSourcesLocaleIdentifier]];
}

- (void)setMax:(NSUInteger)max
{
    [(BRNumberFormatter *)self.formatter setMax:max];
}

- (NSUInteger)max
{
    return [(BRNumberFormatter *)self.formatter max];
}

- (void)setFormatter:(__kindof NSFormatter *)formatter
{
    NSLog(@"Can't change formatter");
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
