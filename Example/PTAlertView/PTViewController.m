//
//  PTViewController.m
//  PTAlertView
//
//  Created by Paolo Tagliani on 09/29/2014.
//  Copyright (c) 2014 Paolo Tagliani. All rights reserved.
//

#import "PTViewController.h"
#import <UIAlertView+Blocks.h>

@interface PTViewController ()

@end

@implementation PTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testAlert:(id)sender {
 
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                    message:@"This is a test with block"
                                         confirmButtonTitle:@"Ok"
                                         confirmButtonBlock:^{
                                             NSLog(@"Confirmation pressed");
                                         }
                                          cancelButtonTitle:@"Cancel"
                                          cancelButtonBlock:^{
                                              NSLog(@"Cancel pressed");
                                          }];
    [alert show];
}

@end
