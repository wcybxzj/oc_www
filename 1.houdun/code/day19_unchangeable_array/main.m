//
//  main.m
//  day19_unchangeable_array
//
//  Created by 杨秉熙 on 2019/2/17.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
//数组是对象，数组的元素也是对象
//不可变数组:指针指向可以改变，但是指向的内容不可以改变
//可变数组:指针指向可以改变，但是指向的内容可以改变

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.创建空数组
        //对象方法创建
        NSArray *arr1 = [[NSArray alloc]init];
        //类方法创建
        NSArray *arr2 = [NSArray array];
        
        //2.简单方式创建arr,结尾还是有nil,但是被隐藏了
        NSArray *arr3 = @[@"dabing", @"is",@"handsome",@"man"];
        NSLog(@"%@",arr3);
        
        //3.根据已经存在数组，创建新数组
        NSArray *arr4 = [[NSArray alloc] initWithArray:arr3];
        NSArray *arr5 = [[NSArray alloc] initWithObjects:@"I", @"love" ,@"u", nil];
        NSLog(@"%@",arr4);
        NSLog(@"%@",arr5);
        
        //4.类方法创建arr
        NSArray *arr6 = [NSArray arrayWithArray:arr3];
        NSArray *arr7 = [NSArray arrayWithObjects:@"You",@"love", @"me", nil];
        
        //5.获取数组元素的个数
        NSArray *arr8 = @[@"a", @"b", @"c", @"d",@"e",@"f"];
        NSUInteger count = [arr8 count];
        NSLog(@"%lu", count);
        
        //6.按下标来获取一个元素
        NSString *str1 = [arr8 objectAtIndex:2];
        NSLog(@"%@", str1);
        
        //7.简单方式获取一个元素
        NSString *str2 = arr8[1];
        NSLog(@"%@", str2);
        
        //获取最后一个元素
        NSString *str3 = [arr8 lastObject];
        NSLog(@"%@", str3);
        
        //获取第一个元素
        NSString *str4 = [arr8 firstObject];
        NSLog(@"%@", str4);
        
        //获取多个元素
        NSIndexSet *set = [[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(1, 2)];
        NSArray *arr9 = [arr8 objectsAtIndexes:set];
        NSLog(@"%@",arr9);
        
        //简单获取多个元素
        NSArray* arr10 = [arr8 subarrayWithRange:NSMakeRange(3, 2)];
        NSLog(@"%@", arr10);
        
        //遍历
        for (int loop = 0; loop < [arr8 count]; loop++) {
            NSLog(@"index:%d value:%@", loop, arr8[loop]);
        }
        
        //快速遍历
        for (NSString *str5 in arr8) {
            NSLog(@"%@", str5);
        }
        
        //arr->str
        NSString *str6 = [arr8 componentsJoinedByString:@"*"];
        NSLog(@"%@", str6);//a*b*c*d*e*f
        
        //str->arr
        NSArray *arr11 = [str6 componentsSeparatedByString:@"*"];
        NSLog(@"%@", arr11);//(a,b,c,d,e,f)
        
        //arr->str
        NSString *str7 = [arr8 componentsJoinedByString:@"&"];
        NSLog(@"%@", str7);//a&b&c&d&e&f

        //字符串用*分割成数组
        //注意这里的输出因为&是特殊字符打印的时候带双引号，双引号不是原数据的一部分
        NSArray *arr12 = [str7 componentsSeparatedByString:@"*"];
        NSLog(@"%@", arr12);//"a&b&c&d&e&f"

    }
    return 0;
}
