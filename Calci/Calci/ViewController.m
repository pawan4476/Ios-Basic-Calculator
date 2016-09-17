//
//  ViewController.m
//  Calci
//
//  Created by Nagam Pawan on 9/8/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    _display.text = @"0";
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPrsd:(id)sender {
    currentNumber = currentNumber *10 + (float)[sender tag];
    NSLog(@"The current number is %f",currentNumber);
    _display.text = [NSMutableString stringWithFormat:@"%.1f", currentNumber];
    
}

- (IBAction)operationPressed:(id)sender {
    if (currentoperation == 0)
        result = currentNumber;
    else{
        switch (currentoperation) {
            case 50:
                result = result + currentNumber;
                break;
                case 25:
                result = result - currentNumber;
                break;
                case 75:
                result = result / currentNumber;
                break;
                case 100:
                result = result * currentNumber;
                break;
                case 125:
                _display.text = [NSString stringWithFormat:@"%.1f",result];
            default:
                currentoperation = 0;
                break;
        }
    }
    currentNumber = 0;
    _display.text = [NSString stringWithFormat:@"%.5f",result];
    if ([sender tag] == 0) result = 0;
    currentoperation = (float)[sender tag];
    
        
    
    
}
- (IBAction)cancelInput:(id)sender {
    currentNumber = 0;
    _display.text = @"0";
    currentoperation = 0;
    
}
@end
