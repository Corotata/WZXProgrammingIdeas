//
//  WZXFunctionalCalculator.h
//  WZXProgrammingIdeas
//
//  Created by wordoor－z on 16/4/7.
//  Copyright © 2016年 wzx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface WZXFunctionalCalculator : NSObject

@property(nonatomic,assign)BOOL isEqule;
@property(nonatomic,assign)CGFloat result;

- (WZXFunctionalCalculator *)calculator:(CGFloat (^)(CGFloat result))block;

- (WZXFunctionalCalculator *)equle:(BOOL (^)(CGFloat result))block;

@end
