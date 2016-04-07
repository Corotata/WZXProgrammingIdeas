//
//  WZXFunctionalCalculator.m
//  WZXProgrammingIdeas
//
//  Created by wordoor－z on 16/4/7.
//  Copyright © 2016年 wzx. All rights reserved.
//

#import "WZXFunctionalCalculator.h"

@implementation WZXFunctionalCalculator

- (WZXFunctionalCalculator *)calculator:(CGFloat (^)(CGFloat))block
{
    _result = block(_result);
    return self;
}

- (WZXFunctionalCalculator *)equle:(BOOL (^)(CGFloat))block
{
    _isEqule = block(_result);
    return self;
}
@end
