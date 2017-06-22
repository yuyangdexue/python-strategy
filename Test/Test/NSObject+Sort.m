//
//  NSObject+Sort.m
//  Test
//
//  Created by 于洋 on 2017/6/22.
//  Copyright © 2017年 于洋. All rights reserved.
//

#import "NSObject+Sort.h"
#import <objc/runtime.h>
static NSString *Comparative = @"Comparative";

@implementation NSObject (Sort)

- (void)setComparative:(id<Comparative>)comparative
{
     objc_setAssociatedObject(self, &Comparative, comparative, OBJC_ASSOCIATION_ASSIGN);
}

- (id )comparative
{
    
    return objc_getAssociatedObject(self, &Comparative);

}




@end
