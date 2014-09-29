//
//  UIAlertView+Blocks.h
//  Kundi
//
//  Created by Paolo Tagliani on 07/05/14.
//  Copyright (c) 2014 TilTap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Blocks) <UIAlertViewDelegate>

- (id)initWithTitle:(NSString *)title
            message:(NSString *)message
 confirmButtonTitle:(NSString *)confirmButtonTitle
 confirmButtonBlock:(void (^)())confirmBlock
  cancelButtonTitle:(NSString *)cancelButtonTitle
  cancelButtonBlock:(void (^)())cancelBlock;

@end
