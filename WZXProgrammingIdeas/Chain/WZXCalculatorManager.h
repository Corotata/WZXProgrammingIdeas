//
//  WZXCalculator.h
//  WZXChainTypeDemo
//
//  Created by wordoor－z on 16/4/7.
//  Copyright © 2016年 wzx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface WZXCalculatorManager : NSObject

@property(nonatomic,assign)CGFloat result;

- (WZXCalculatorManager * (^)(CGFloat))add;
- (WZXCalculatorManager * (^)(CGFloat))sub;
- (WZXCalculatorManager * (^)(CGFloat))muilt;
- (WZXCalculatorManager * (^)(CGFloat))divide;
@end
