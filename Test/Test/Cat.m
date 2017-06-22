//
//  Cat.m
//  Test
//
//  Created by 于洋 on 2017/6/22.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "Cat.h"
#import "Comparative.h"
#import "NSObject+Sort.h"
@interface Cat ()<Comparative>


@end
@implementation Cat

- (instancetype)init
{
    self = [super init];
    if (!self) return nil;
    self.comparative =self;
    return self;
}


- (NSInteger)comparativeTo:(id) object
{
    Cat *cat = (Cat *)object;
    if (self.height>cat.height) {
        return 1;
    }
    else if (self.height==cat.height)
    {
        return 0;
    }
    else if (self.height<cat.height)
    {
        return -1;
    }
    return -100;
}


@end
