//
//  WZXCalculator.m
//  WZXChainTypeDemo
//
//  Created by wordoor－z on 16/4/7.
//  Copyright © 2016年 wzx. All rights reserved.
//

#import "WZXCalculatorManager.h"

@implementation WZXCalculatorManager

- (WZXCalculatorManager *(^)(CGFloat))add
{
    return ^WZXCalculatorManager * (CGFloat value){
    
        _result += value;
        
        return self;
    };
}


- (WZXCalculatorManager *(^)(CGFloat))sub
{
    return ^WZXCalculatorManager * (CGFloat value){
        
        _result -= value;
        
        return self;
    };
}

- (WZXCalculatorManager *(^)(CGFloat))muilt
{
    return ^WZXCalculatorManager * (CGFloat value){
        
        _result *= value;
        
        return self;
    };
}

- (WZXCalculatorManager *(^)(CGFloat))divide
{
    return ^WZXCalculatorManager * (CGFloat value){
        
        _result /= value;
        
        return self;
    };
}
@end
