//
//  NSObject+WZXCalculator.h
//  WZXChainTypeDemo
//
//  Created by wordoor－z on 16/4/7.
//  Copyright © 2016年 wzx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WZXCalculatorManager.h"
@interface NSObject (WZXCalculator)
+ (CGFloat)makeCalculator:(void (^) (WZXCalculatorManager * manager))block;
@end
