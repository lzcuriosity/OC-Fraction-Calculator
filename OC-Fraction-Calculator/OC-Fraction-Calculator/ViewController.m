//
//  ViewController.m
//  OC-Fraction-Calculator
//
//  Created by lz on 15/9/16.
//  Copyright (c) 2015年 lz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    char op;
    int currentNumber;
    BOOL firstOperand, isNumberator;
    Calculator *myCalculator;
    NSMutableString *displayString;
    
}

@synthesize display;



- (void)viewDidLoad
{
    [super viewDidLoad];
    firstOperand = YES;
    isNumberator = YES;
    displayString = [NSMutableString stringWithCapacity: 40];
    myCalculator = [[Calculator alloc] init];
    display.lineBreakMode = NSLineBreakByTruncatingHead;     //display显示方式，隐藏开头
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
 
}



- (IBAction)clickDight:(UIButton *)sender
{
    long dight = sender.tag;
    
    [self processDight: (int)dight];
}

- (IBAction)clickPlus:(UIButton *)sender
{
    [self processOp: '+'];
}

- (IBAction)clickMinus:(UIButton *)sender
{
    [self processOp: '-'];
}

- (IBAction)clickMultiply:(UIButton *)sender
{
    [self processOp: '*'];
}

- (IBAction)clickDivide:(UIButton *)sender
{
    [self processOp: '/'];
}

- (IBAction)clickEquals:(UIButton *)sender
{
   /* if (firstOperand == NO) {
        [self storeFracPart];
        [myCalculator performOperation: op];
        
        [displayString appendString: @" = "];
        [displayString appendString: [myCalculator.accumulator convertToString]];
        display.text = displayString;
        
        currentNumber = 0;
        isNumberator = YES;
        firstOperand =YES;
        [displayString setString: @""];
    }
    */

    if (firstOperand == YES)
        [self processOp: '='];
    else
        [displayString appendString: @" = "];
    
        [self storeFracPart];
        [myCalculator performOperation: op];
        
        [displayString appendString: [myCalculator.accumulator convertToString]];
        display.text = displayString;
        
        currentNumber = 0;
        isNumberator = YES;
        firstOperand =YES;
        [displayString setString: @""];
        
    
    
   
}

- (IBAction)clickClear:(UIButton *)sender
{
    isNumberator = YES;
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];
    
    [displayString setString: @""];
    display.text = displayString;
    
}

- (IBAction)clickOver:(UIButton *)sender
{
    [self storeFracPart];
    isNumberator = NO;
    [displayString appendFormat: @"/"];
    display.text = displayString;
}


-(void)processDight:(int)dight
{
    currentNumber = currentNumber * 10 + dight;
    
    [displayString appendString:[NSString stringWithFormat: @"%i", dight]];
    display.text = displayString;
}

-(void)processOp:(char)theOp
{
    NSString *opStr;
    op = theOp;
    
    switch (theOp) {
        case '+':
            opStr = @" + ";
            break;
        case '-':
            opStr = @" - ";
            break;
        case '*':
            opStr = @" × ";
            break;
        case '/':
            opStr = @" ÷ ";
            break;
        case '=':
            opStr = @" = ";
    }
    
    [self storeFracPart];
    firstOperand = NO;
    isNumberator = YES;
    
    [displayString appendString: opStr];
    display.text = displayString;
    
}

-(void)storeFracPart
{
    if (firstOperand)
    {
        if (isNumberator)
        {
            myCalculator.operand1.numberator = currentNumber;
            myCalculator.operand1.denominator = 1;
        }
        else
            myCalculator.operand1.denominator = currentNumber;
        
    }
    else if(isNumberator)
    {
        myCalculator.operand2.numberator = currentNumber;
        myCalculator.operand2.denominator = 1;
    }
    else{
        myCalculator.operand2.denominator = currentNumber;
        firstOperand = YES;
    }
    
    currentNumber = 0;
    
}

@end
