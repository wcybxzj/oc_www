//
//  main.m
//  day27_protocol
//
//  Created by 杨秉熙 on 2019/2/21.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //协议:
        //定义:一组方法的列表
        //特点:只有定义没有实现.实现在遵守(引用)了该协议的类的.m文件中实现部分，
        //构成:NSObject是基础协议
        
        /*
        定义:
        @protocol 协议名 <NSObject基础协议>
            方法定义的列表
        @end
        */
       
        /*
        协议方法的分类:
        @optional:可选实现的方法
        @required:是必须实现的方法
        */
        
        /*
        为什么要使用协议?
        协议可以提供一个统一的接口,谁想要实现协议中的功能,那么就遵守协议

        协议和继承的比较:
        相同点:都有统一的接口
        不同点:
        协议:只要遵守协议就可以使用/不需要创建类/只有定义没有实现
        继承:只能用于子类和本类/需要创建一个单独的类/父类要单独实现方法
        */
        
        /*
         协议可以遵守一个或者多个协议
         类可以遵守一个或者多个协议
         协议可以被1个或者多个协议遵守
         协议可以被1个或者类个协议遵守
         */
        
        Cat *cat = [[Cat alloc]init];
        Dog *dog = [[Dog alloc]init];
        
        [cat run];
        [dog run];
        

    }
    return 0;
}
