//
//  ViewController.h
//  OC-Fraction-Calculator
//
//  Created by lz on 15/9/16.
//  Copyright (c) 2015年 lz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Fraction.h"
#import "Calculator.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *display;


- (IBAction)clickDight:(UIButton *)sender;

- (IBAction)clickPlus:(UIButton *)sender;
- (IBAction)clickMinus:(UIButton *)sender;
- (IBAction)clickMultiply:(UIButton *)sender;
- (IBAction)clickDivide:(UIButton *)sender;

- (IBAction)clickEquals:(UIButton *)sender;
- (IBAction)clickClear:(UIButton *)sender;
- (IBAction)clickOver:(UIButton *)sender;

-(void) processDight: (int) dight;
-(void) processOp: (char) theOp;
-(void) storeFracPart;

@end

