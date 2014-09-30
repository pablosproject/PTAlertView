# PTAlertView

[![Version](https://img.shields.io/cocoapods/v/PTAlertView.svg?style=flat)](http://cocoadocs.org/docsets/PTAlertView)
[![License](https://img.shields.io/cocoapods/l/PTAlertView.svg?style=flat)](http://cocoadocs.org/docsets/PTAlertView)
[![Platform](https://img.shields.io/cocoapods/p/PTAlertView.svg?style=flat)](http://cocoadocs.org/docsets/PTAlertView)

This is a simple category of UIAlertView that simplify the basic usage of alerts with blocks. It uses *AssociatedObject* to handle delegate's method.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

##Example

You could use the category by importing it and instantiate a new alert with the provided initialization method.    
This method takes the titles of the confirmation and cancel buttons and a block for every case.  
If you **not** provide a title for the cancel button, the alert will only show the confirmation button.
```objective-c
#import <UIAlertView+Blocks.h>

/*
	Alert with two buttons
*/
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
    
/*
	Alert with one button
*/
	    UIAlertView *singleAlert = [[UIAlertView alloc] initWithTitle:@"Alert"
                                                    message:@"This is a test with block"
                                         confirmButtonTitle:@"Ok"
                                         confirmButtonBlock:^{
                                             NSLog(@"Confirmation pressed");
                                         }
                                          cancelButtonTitle:nil
                                          cancelButtonBlock:nil];
    [singleAlert show];

}

```

## Installation

PTAlertView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "PTAlertView"

## Author

Paolo Tagliani, pablosproject@gmail.com

## License

PTAlertView is available under the MIT license. See the LICENSE file for more info.

