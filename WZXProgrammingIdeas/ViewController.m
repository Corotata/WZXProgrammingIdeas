//
//  ViewController.m
//  WZXProgrammingIdeas
//
//  Created by wordoor－z on 16/4/7.
//  Copyright © 2016年 wzx. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+WZXCalculator.h"
#import "WZXFunctionalCalculator.h"
#import "WZXResponseModel.h"
@interface ViewController ()
@property(nonatomic,strong)WZXResponseModel * model;
@property(nonatomic,strong)UILabel * label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /** 链式 */
    /** +10-9*20/10 */
    CGFloat result = [NSObject makeCalculator:^(WZXCalculatorManager *manager) {
        manager.add(10).sub(9).muilt(20).divide(10);
    }];
    NSLog(@"链式：%f",result);
    
    /** 函数式 */
    /** 判断2*5是否等于10 */
    WZXFunctionalCalculator * functionCal = [[WZXFunctionalCalculator alloc]init];
    BOOL equle = [[[functionCal calculator:^CGFloat(CGFloat result) {
        result += 2;
        result *= 5;
        return result;
    }]equle:^BOOL(CGFloat result) {
        return result == 10;
    }] isEqule];
    NSLog(@"函数式：%d",equle);
    
    /** 响应式 */
    /** 改变model.labelText属性 _label跟着改变text */
    _model = [[WZXResponseModel alloc]init];
    [_model addObserver:self forKeyPath:@"labelText" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _model.labelText = @"kvo";
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"labelText"])
    {
        self.label.text = change[@"new"];
        NSLog(@"str新值:%@",change[@"new"]);
    }
}


- (UILabel *)label
{
    if (!_label)
    {
        _label = ({
            UILabel * label = [[UILabel alloc]init];
            label.center = self.view.center;
            label.bounds = CGRectMake(0, 0, 100, 20);
            label;
        });
        [self.view addSubview:_label];
    }
    return _label;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
