//
//  Fraction.m
//  OC-Fraction-Calculator
//
//  Created by lz on 15/9/16.
//  Copyright (c) 2015年 lz. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numberator, denominator;

-(void) print
{
    NSLog(@"%i/%i",numberator,denominator);
}

-(void) setTo:(int)n over:(int)d
{
    numberator = n;
    denominator = d;
}


-(Fraction *) add:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init ];
    
    result.numberator = numberator * f.denominator + denominator * f.numberator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
    
}

-(Fraction *) subtract:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numberator =  numberator * f.denominator - denominator * f.numberator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
    
}

-(Fraction *) multiply:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numberator = numberator * f.numberator;
    result.denominator = denominator *f.denominator;
    
    [result reduce];
    return result;

}

-(Fraction *) divide:(Fraction *)f
{
    Fraction *result = [[Fraction alloc] init];
 
    result.numberator = numberator * f. denominator;
    result.denominator =  denominator * f.numberator;
    
    [result reduce];
    return result;
    
}



-(void)reduce
{
    int n = numberator;
    int d = denominator;
    int temp;
    
    if (n == 0)
        return;
    
    else if (n < 0)
        n = -n;
    
    while (d != 0)
    {
        temp = n % d;
        n = d;
        d = temp;
        
    }
    
    numberator /= n;
    denominator /= n;
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double) numberator / denominator;
    else
        return NAN;

}

-(NSString *) convertToString
{
    if (numberator == denominator)
    {
        if (numberator == 0) {
            return @"0";
        } else {
            return  @"1";
        }
    } else{
        if (denominator == 1) {
            return [NSString stringWithFormat:@"%i",numberator];
        } else {
            return [NSString stringWithFormat:@"%i/%i" ,numberator,denominator];
        }
    }
}

@end
