//
//  UIAlertView+Blocks.h
//  Kundi
//
//  Created by Paolo Tagliani on 07/05/14.
//  Copyright (c) 2014 TilTap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Blocks) <UIAlertViewDelegate>

/**
 *  Create an alert view with the block passed has parameter to handle confirm and cancel action
 *
 *  @param title              Title of the Alert View
 *  @param message            A message to be dispayed
 *  @param confirmButtonTitle The title of the confirm button
 *  @param confirmBlock       A block to be executed when success button is pressed
 *  @param cancelButtonTitle  The title of the cancel button
 *  @param cancelBlock        A bloc to be executed when cancel button is pressed
 *
 *  @return A newly instantiated UIAlertView
 */
- (instancetype)initWithTitle:(NSString *)title
            message:(NSString *)message
 confirmButtonTitle:(NSString *)confirmButtonTitle
 confirmButtonBlock:(void (^)())confirmBlock
  cancelButtonTitle:(NSString *)cancelButtonTitle
  cancelButtonBlock:(void (^)())cancelBlock;

@end
