//
//  ViewController.h
//  Calci
//
//  Created by Nagam Pawan on 9/8/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController{
    float result;
    int currentoperation;
    float currentNumber;
    
}

- (IBAction)btnPrsd:(id)sender;
- (IBAction)operationPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *display;
- (IBAction)cancelInput:(id)sender;


@end

