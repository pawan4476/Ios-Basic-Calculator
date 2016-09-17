//
//  RoundButton.m
//  Calci
//
//  Created by Nagam Pawan on 9/12/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "RoundButton.h"

@implementation RoundButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)awakeFromNib{
    self.layer.cornerRadius = 15;
    self.clipsToBounds = YES;
    [super awakeFromNib];
    
}

@end
