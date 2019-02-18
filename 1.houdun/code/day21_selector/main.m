//
//  main.m
//  day21_selector
//
//  Created by 杨秉熙 on 2019/2/19.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //SEL:专门将oc对象封装成变量,它是一种数据类型
        
        //格式:@selector(方法)
        Person *per = [[Person alloc]init];
        SEL sel1 = @selector(run);
        
        //通过performSelector:方法可以调用SEL变量,从而调用到SEL封装的方法
        [per performSelector:sel1];
        
        //作用:容错处理
        //情况1:运行1个不存在的方法,程序直接崩溃
        //[per run1]；
        
        //情况2:运行1个不存在的方法,程序不会崩溃
        SEL sel2 = @selector(run1);
        if ([per respondsToSelector:sel2]) {
            [per performSelector:sel1];
        }else{
            NSLog(@"sel2无法获取到响应");
        }
        
        //performSelector只能对立面的封装的函数执行2个参数,更多参数需要自己去封装
        SEL sel3 = @selector(test:andNum2:);
        [per performSelector:sel3
                  withObject:[[NSNumber alloc]initWithInt:10]
                  withObject:[[NSNumber alloc]initWithInt:20]];
        
    }
    return 0;
}
