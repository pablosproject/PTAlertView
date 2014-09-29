//
//  UIAlertView+Blocks.m
//  Kundi
//
//  Created by Paolo Tagliani on 07/05/14.
//  Copyright (c) 2014 TilTap. All rights reserved.
//

#import "UIAlertView+Blocks.h"
#import <objc/runtime.h>

@implementation UIAlertView (Blocks)

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message confirmButtonTitle:(NSString *)confirmButtonTitle confirmButtonBlock:(void (^)())confirmBlock cancelButtonTitle:(NSString *)cancelButtonTitle cancelButtonBlock:(void (^)())cancelBlock {

    if (confirmBlock) {
        objc_setAssociatedObject (self, "confirmBlockCallback", [confirmBlock copy], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    if (cancelBlock) {
        objc_setAssociatedObject (self, "cancelBlockCallback", [cancelBlock copy], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }

    self = [self initWithTitle:title message:message delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
    if (self) {
        if (cancelButtonTitle) {
            [self addButtonWithTitle:cancelButtonTitle];
            self.cancelButtonIndex = [self numberOfButtons] - 1;
        }
        if (confirmButtonTitle) {
            [self addButtonWithTitle:confirmButtonTitle];

        }
    }

    return self;

}

#pragma mark - AlertView delegates methods

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

    void (^block)();

    if ([self numberOfButtons] != 0 && buttonIndex == self.cancelButtonIndex) {
        block = objc_getAssociatedObject (self, "cancelBlockCallback");
    }
    else {
        block = objc_getAssociatedObject (self, "confirmBlockCallback");
    }

    if (block) {
        block ();
    }

}


@end
