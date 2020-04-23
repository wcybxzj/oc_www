//
//  main.m
//  02 task2
//
//  Created by wei.chen on 13-8-6.
//  Copyright (c) 2013年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Author.h"

void test1(){
    @autoreleasepool {
        /*_______________键值路径的使用_______________________________*/
        Book *book = [[Book alloc] init];
        Author *author = [[Author alloc] init];

        [book setValue:author forKey:@"author"];

        //通过键值路径，设置属性值
        [book setValue:@"莫言" forKeyPath:@"author.name"];

        NSString *name = [author valueForKey:@"name"];
        NSLog(@"name=%@",name);//莫言

        //通过键值路径，访问属性值
        name = [book valueForKeyPath:@"author.name"];
        NSLog(@"name=%@",name);//莫言
    }
}

void test2(){
    @autoreleasepool {
        /*_________________KVC的运算_______________________________*/
        Author *author = [[Author alloc] init];
        [author setValue:@"莫言" forKey:@"name"];
        
        Book *book1 = [[Book alloc] init];
        book1.name = @"红高粱";
        book1.price = 9.9;
        
        Book *book2 = [[Book alloc] init];
        book2.name = @"蛙";
        book2.price = 10;
        
        NSArray *books = [[NSArray alloc] initWithObjects:book1,book2, nil];
        [author setValue:books forKey:@"issueBook"];
        
        //获取数组中所有book对象的价格
        //priceArray:("9.9",10)
        NSArray *priceArray = [author valueForKeyPath:@"issueBook.price"];
        NSLog(@"priceArray:%@",priceArray);
        
        //获取数组中的个数
        NSNumber *count = [author valueForKeyPath:@"issueBook.@count"];
        NSLog(@"count=%@",count);//2
        
        //计算数组中所有book对象的价格总和
        NSNumber *sum = [author valueForKeyPath:@"issueBook.@sum.price"];
        NSLog(@"sum=%@",sum);
        
        //计算数组中所有book对象的价格的平均值
        NSNumber *avg = [author valueForKeyPath:@"issueBook.@avg.price"];
        NSLog(@"avg=%@",avg);
        
        //取得数组中book对象价格最大值
        NSNumber *max = [author valueForKeyPath:@"issueBook.@max.price"];
        NSLog(@"max=%@",max);
        
        //取得数组中book对象价格最小值
        NSNumber *min = [author valueForKeyPath:@"issueBook.@min.price"];
        NSLog(@"max=%@",min);
        
    }
}


int main(int argc, const char * argv[])
{
    //test1();
    test2();
    return 0;
}

