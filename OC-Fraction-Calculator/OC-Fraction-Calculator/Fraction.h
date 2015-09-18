//
//  Fraction.h
//  OC-Fraction-Calculator
//
//  Created by lz on 15/9/16.
//  Copyright (c) 2015年 lz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numberator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;

-(Fraction *) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(Fraction *) reduceFraction: (Fraction *) f;

-(void) reduce;

-(double) convertToNum;
-(NSString *) convertToString;


@end
