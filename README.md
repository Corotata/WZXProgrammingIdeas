# WZXProgrammingIdeas
链式、函数式、响应式编程思想Demo

## 链式
```
 /** 链式 */
 /** +10-9*20/10 */
 CGFloat result = [NSObject makeCalculator:^(WZXCalculatorManager *manager) {
      manager.add(10).sub(9).muilt(20).divide(10);
 }];
 NSLog(@"链式：%f",result);
```

## 函数式
```
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
```

## 响应式
```
/** 响应式 */
/** 改变model.labelText属性 _label跟着改变text */
_model = [[WZXResponseModel alloc]init];
[_model addObserver:self forKeyPath:@"labelText" options:NSKeyValueObservingOptionNew context:nil];
```
```
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
```
