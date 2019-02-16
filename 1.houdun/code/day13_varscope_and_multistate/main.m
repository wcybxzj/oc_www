//
//  main.m
//  day13_varscope_and_multistate
//
//  Created by 杨秉熙 on 2019/2/16.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Animal.h"
#import "Dog.h"
#import "Driver.h"

//变量作用域:
//看day12/Person.h

//多态:
//1.多态的基础:是继承
//2.多态的代码:父类的指针指向子类的对象
//3.多态的好处:将对象的使用和对象的实现进行解耦
//3.多态的局限性:
//父类的指针变量不能访问子类独有的方法。如果想访问需要强制转换

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [Dog new];
        Animal *an1 = [Dog new];
        Animal *an2 = [Animal new];
        
        //多态
        [dog eat];//输出Dog eat
        [an1 eat];//输出Dog eat
        
        //多态局限性
        //[an1 run];//报错父类指针不能访问子类特有方法
        Dog *an3 = (Dog*)an1;//强转来解决
        [an3 run];//输出Dog run

        //多态的好处
        //如果要加个cat,只需cat继承Animal
        //调用地地方把dog换成cat其他都不用改
        Driver *d = [Driver new];
        [d eat_all:dog];//Dog eat
        [d eat_all:an2];//Animal eat
    }
    return 0;
}
