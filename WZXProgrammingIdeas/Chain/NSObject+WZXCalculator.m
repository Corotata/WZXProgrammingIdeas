//
//  NSObject+WZXCalculator.m
//  WZXChainTypeDemo
//
//  Created by wordoor－z on 16/4/7.
//  Copyright © 2016年 wzx. All rights reserved.
//

#import "NSObject+WZXCalculator.h"

@implementation NSObject (WZXCalculator)

+ (CGFloat)makeCalculator:(void (^)(WZXCalculatorManager *))block
{
    WZXCalculatorManager * mgr = [[WZXCalculatorManager alloc] init];
    
    block(mgr);
    
    return mgr.result;
}

@end
