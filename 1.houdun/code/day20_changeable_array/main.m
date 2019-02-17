//
//  main.m
//  day20_changeable_array
//
//  Created by 杨秉熙 on 2019/2/17.
//  Copyright © 2019 杨秉熙. All rights reserved.
//

#import <Foundation/Foundation.h>
//可变数组
//1.类名:NSMutableArray
//2.可变数组是不可变数组的子类

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.创建空的可变数组
        //对象方法创建
        NSMutableArray *arr1 = [[NSMutableArray alloc]init];
        //类方法创建
        NSMutableArray *arr2 = [NSMutableArray array];
        //对象方法创建
        NSMutableArray *arr3 = [[NSMutableArray alloc] initWithCapacity:10];
        //类方法创建
        NSMutableArray *arr4 = [NSMutableArray arrayWithCapacity:10];
        
        //2.可变数组不能用简单方法创建,简单方式创建的就是一个可变数组
        
        //3.通过已经存在的数组创建可变数组
        //对象方法
        NSMutableArray *arr5 = [[NSMutableArray alloc] initWithArray:@[@"dabing",@"is",@"cake"]];
        NSMutableArray *arr6 = [[NSMutableArray alloc] initWithObjects:@"dabing",@"is", @"cake",nil];
        //类方法
        NSMutableArray *arr7 = [NSMutableArray arrayWithArray:arr5];
        NSMutableArray *arr8 = [NSMutableArray arrayWithObjects:@"I", @"love", @"u", nil];
        
        //4.ADD
        NSMutableArray *arr9 = [[NSMutableArray alloc]initWithArray:@[@"I", @"love", @"u"]];
        [arr9 addObject:@"!"];
        NSLog(@"%@", arr9);

        [arr9 addObjectsFromArray:@[@"11", @"222"]];
        NSLog(@"%@", arr9);

        [arr9 insertObject:@"xxxx" atIndex:2];
        NSLog(@"%@", arr9);
        
        NSIndexSet *set = [[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(5, 2)];
        [arr9 insertObjects:@[@"11", @"heihei"] atIndexes:set];
        NSLog(@"%@", arr9);

        //5.DELETE
        //按照内容删除
        [arr9 removeObject:@"I"];
        NSLog(@"%@", arr9);
        //如果有多个相同的元素会一起删除
        [arr9 removeObject:@"11"];
        NSLog(@"%@", arr9);
        //按照index删除
        [arr9 removeObjectAtIndex:3];
        NSLog(@"%@", arr9);
        //delete all
        [arr9 removeAllObjects];
        NSLog(@"%@", arr9);

        //6.UPDATE
        NSMutableArray *arr10 = [[NSMutableArray alloc] initWithArray:@[@"dabing",@"is",@"a", @"cake"]];
        //直接替换
        [arr10 setArray:@[@"sky",@"is",@"human",@"moon",@"is",@"NE"]];
        NSLog(@"%@", arr10);
        //更新指定index的数据
        [arr10 replaceObjectAtIndex:2 withObject:@"111"];
        NSLog(@"%@", arr10);
        //
        NSIndexSet *set10 = [[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(3, 2)];
        [arr10 replaceObjectsAtIndexes:set10 withObjects:@[@"444", @"555"]];
        NSLog(@"%@", arr10);
        [arr10 replaceObjectsInRange:NSMakeRange(3, 2) withObjectsFromArray:@[@"666", @"777"]];
        NSLog(@"%@",arr10);
        
        [arr10 replaceObjectsInRange:NSMakeRange(3, 2) withObjectsFromArray:@[@"aaa",@"bbb",@"ccc",@"ddd"] range:NSMakeRange(1, 2)];
        NSLog(@"%@", arr10);
        
        [arr10 exchangeObjectAtIndex:0 withObjectAtIndex:1];
        NSLog(@"%@",arr10);
        
        //7.SELECT
        //快速遍历
        for (NSString *str11 in arr10) {
            NSLog(@"%@", str11);
        }
        
    }
    return 0;
}
