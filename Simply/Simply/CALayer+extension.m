//
//  CALayer+extension.m
//  Simply
//
//  Created by Akhil MS on 02/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import "CALayer+extension.h"

@implementation CALayer (extension)


-(void)setBorderUIColor:(UIColor*)color
{
    self.borderColor = color.CGColor;
}

-(UIColor*)borderUIColor
{
    return [UIColor colorWithCGColor:self.borderColor];
}

@end
