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
}

- (IBAction)clickPlus:(UIButton *)sender
{
    
}

- (IBAction)clickMinus:(UIButton *)sender
{
    
}

- (IBAction)clickMultiply:(UIButton *)sender
{
    
}

- (IBAction)clickDivide:(UIButton *)sender
{
    
}

- (IBAction)clickEquals:(UIButton *)sender
{
    
}

- (IBAction)clickClear:(UIButton *)sender
{
    
}

- (IBAction)clickOver:(UIButton *)sender
{
    
}


-(void)processDight:(int)dight
{
    
}

-(void)processOp:(char)theOp
{
    
}

-(void)storeFracPart
{
    
}

@end
