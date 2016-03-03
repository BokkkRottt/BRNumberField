//
//  BRNumberFormatter.m
//  BRNumberFormatter
//
//  Created by Yang on 3/3/16.
//  Copyright © 2016 sgyang. All rights reserved.
//

#import "BRNumberFormatter.h"

@implementation BRNumberFormatter

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.max = INTMAX_MAX;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.max = INTMAX_MAX;
    }
    return self;
}

- (BOOL)isPartialStringValid:(NSString * __nonnull * __nonnull)partialStringPtr proposedSelectedRange:(nullable NSRangePointer)proposedSelRangePtr originalString:(NSString *)origString originalSelectedRange:(NSRange)origSelRange errorDescription:(NSString * __nullable * __nullable)error;
{
    if ((*partialStringPtr).length <= origString.length) {
        return YES;
    }
    
    NSString * strInsert = [*partialStringPtr substringWithRange:*proposedSelRangePtr];
    if (strInsert) {
        for (NSUInteger charIndex = 0; charIndex < strInsert.length; charIndex ++) {
            if (![[NSCharacterSet decimalDigitCharacterSet] characterIsMember:[strInsert characterAtIndex:charIndex]]) {
                return NO;
            }
        }
    }
    
    NSNumber * newStringNumber = [[NSNumberFormatter new] numberFromString:*partialStringPtr];
    if (!newStringNumber || newStringNumber.integerValue > self.max) {
        return NO;
    }
    
    return YES;
}

@end
