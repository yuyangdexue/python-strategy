//
//  Dog.m
//  Test
//
//  Created by 于洋 on 2017/6/22.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "Dog.h"
#import "Comparative.h"
#import "NSObject+Sort.h"
@interface Dog ()<Comparative>

@end
@implementation Dog

- (instancetype)init
{
    self = [super init];
    if (!self) return nil;
    self.comparative = self;
    return self;
}


- (NSInteger)comparativeTo:(id)object
{
    Dog *dog = (Dog *)object;
    if (self.speed>dog.speed) {
        return 1;
    }
    else if (self.speed==dog.speed)
    {
        return 0;
    }
    else if (self.speed<dog.speed)
    {
        return -1;
    }
    return -100;

}

@end
