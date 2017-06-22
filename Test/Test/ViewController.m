//
//  ViewController.m
//  Test
//
//  Created by 于洋 on 2017/6/22.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "ViewController.h"
#import "DataSorter.h"
#import "Cat.h"
#import "Dog.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //按照身高排序
//    NSMutableArray *array = [[NSMutableArray alloc]init];
//    for ( int i=4; i>0; i--) {
//        [array addObject:[self getHeight:i weight:i]];
//    }
    // 按照速度排序
    NSMutableArray *array = [[NSMutableArray alloc]init];
    for ( int i=4; i>0; i--) {
        [array addObject:[self getSpeed:i]];
    }
    
    
    DataSorter *dataSorter= [[DataSorter alloc]init];
    [dataSorter sort:array];
    [dataSorter print];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (Dog *)getSpeed:(NSInteger )speed
{
    Dog *dog = [[Dog alloc]init];
    dog.speed = speed;
    return dog;
}



- (Cat *)getHeight:(NSInteger )height weight:(NSInteger)weight
{
    Cat *cat = [[Cat alloc]init];
    cat.height = height;
    cat.weight = weight;
    return cat;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
