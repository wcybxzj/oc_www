//
//  Nurse.m
//  03 task3
//
//  Created by wei.chen on 13-8-6.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

#import "Nurse.h"
#import "Children.h"

@implementation Nurse

- (id)initWithChildren:(Children *)children {
    self = [super init];
    if (self != nil) {
        
        _children = [children retain];
        
        //观察小孩的hapyValue值
        
        //使用KVO为_children对象添加一个观察者，用于观察监听hapyValue属性值是否被修改了
        [_children addObserver:self forKeyPath:@"hapyValue"
                       options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                       context:NULL];
        
        //添加对hungryValue值变化的观察监听
        [_children addObserver:self forKeyPath:@"hungryValue"
                       options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                       context:NULL];
        
    }
    
    return self;
}

//KVO触发的方法，hapyValue值如果被修改了，则调用此方法
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    
    NSLog(@"%@", change);
    
    if ([keyPath isEqualToString:@"hapyValue"]) {
        //获取到hapyValue最新的数值
        NSNumber *hapyValue = [change objectForKey:@"new"];
        NSNumber *hapyValue2 = [change objectForKey:@"old"];

        NSLog(@"hapyValue new:%@", hapyValue);
        NSLog(@"hapyValue2 old:%@", hapyValue2);

        
        NSInteger value = [hapyValue integerValue];
        NSLog(@"快乐值是:%0.1f%%",value/100.0 * 100);
        
        
        if (value < 80) {
            [self play];
        }
    } else if([keyPath isEqualToString:@"hungryValue"]) {
        //获取到hungryValue最新的数值
        NSNumber *hungryValue = [change objectForKey:@"new"];
        NSNumber *hungryValue2 = [change objectForKey:@"old"];
        
        NSLog(@"hungryValue new:%@", hungryValue);
        NSLog(@"hungryValue2 old:%@", hungryValue2);
        
        
        NSLog(@"饥饿值：%@",hungryValue);
        
        if ([hungryValue integerValue] < 70) {
            NSLog(@"保姆给小孩喂饭了");
            [_children setHungryValue:100];
        }
    }
    

}

- (void)play {
    NSLog(@"保姆陪小孩玩了");
    [_children setHapyValue:100];
}


- (void)dealloc {
    
    //移除观察者
    [_children removeObserver:self forKeyPath:@"hapyValue"];
    [_children removeObserver:self forKeyPath:@"hungryValue"];
    
    [_children release];
    [super dealloc];
}

@end
