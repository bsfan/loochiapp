//
//  UIColor+ILColor.m
//  Illumi
//
//  Created by Thomas SARLANDIE on 15/08/12.
//
//

#import "UIColor+ILColor.h"

@implementation UIColor (ILColor)

+ (UIColor*) colorByInterpolatingFrom:(UIColor*) colorA to:(UIColor*) colorB at:(float)position
{
    CGFloat redA, greenA, blueA;
    CGFloat redB, greenB, blueB;
    CGFloat alpha;
    
    [colorA getRed:&redA green:&greenA blue:&blueA alpha:&alpha];
    [colorB getRed:&redB green:&greenB blue:&blueB alpha:&alpha];
    
    CGFloat red, green, blue;
    
    red = redA * position + redB * (1 - position);
    green = greenA * position + greenB * (1 - position);
    blue = blueA * position + blueB * (1 - position);
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
