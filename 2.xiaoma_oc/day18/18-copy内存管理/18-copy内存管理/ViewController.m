//
//  ViewController.m
//  18-copy内存管理
//
//  Created by 520it on 15/8/7.
//  Copyright (c) 2015年 . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /*
     内存管理原则:
     一次alloc 对应一次release
     一次retain 对应一次 release
     一次copy 对应一次release
     有加就有减
     
     总结:
     如果是浅拷贝:不会生成新的对象,但是系统就会对原来的对象进行retain,
     所以需要对原来的对象进行一次
     
     如果是深拷贝:会生成新的对象,系统不会对原来的对象进行retain,但是因为生成了新的对象,所以我们需要对新的对象进行release
     */

    //1.创建一个不可变字符串
    NSString *str = [[NSString alloc]initWithFormat:@"lnj"];
    NSLog(@"str = %lu", [str retainCount]);
    
    /*
     */
    //不会生成新的对象,但是需要注意,正是因为不会生产新的对象,所以系统会对以前的对象进行一次retain
    //如果是浅拷贝,那么系统就会对原来的对象进行retain
    
    NSString *str2 = [str copy];
    NSLog(@"str = %lu", [str retainCount]);
    
    [str release];
    [str release];
    
    //深拷贝:会生成新的对象,正是因为会生成新的对象,所以系统不会对以前的对象进行retain
    //,但是因为生成了新的对象,所以我们需要对新的对象进行release
    NSMutableString *strM = [str mutableCopy];
    NSLog(@"str = %lu", [str retainCount]);
    NSLog(@"strM = %lu", [strM retainCount]);
    
    NSLog(@"%p - %p", str, strM);
    [strM release];
    [str release];
    





}


@end
