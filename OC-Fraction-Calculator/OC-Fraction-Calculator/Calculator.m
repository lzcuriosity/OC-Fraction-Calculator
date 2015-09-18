//
//  Calculator.m
//  OC-Fraction-Calculator
//
//  Created by lz on 15/9/16.
//  Copyright (c) 2015年 lz. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize operand1, operand2, accumulator;

-(id) init
{
    self = [super init];
    
    if (self){
        operand1 = [[Fraction alloc] init];
        operand2 = [[Fraction alloc] init];
        accumulator = [[Fraction alloc] init];
    }
    
    return self;
}

-(void) clear
{
    accumulator.numberator = 0;
    accumulator.denominator = 0;
}

-(Fraction *) performOperation:(char)op
{
    Fraction *result;
    
    switch (op) {
        case '+':
            result = [operand1 add:operand2];
            break;
        case '-':
            result = [operand1 subtract:operand2];
            break;
        case '*':
            result = [operand1 multiply:operand2];
            break;
        case '/':
            result = [operand1 divide:operand2];
            break;
        case '=':
            result = [operand1 reduceFraction: operand1];
            break;
        default:
            break;
    }
    
    accumulator.numberator = result.numberator;
    accumulator.denominator = result.denominator;

    return accumulator;
}
@end
