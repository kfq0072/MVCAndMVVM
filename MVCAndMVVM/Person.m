//
//  Person.m
//  MVCAndMVVM
//
//  Created by hsm on 2017/6/10.
//  Copyright © 2017年 SM. All rights reserved.
//

#import "Person.h"

@implementation Person
+ (instancetype)personModelWithDict:(NSDictionary *)dict
{
    if (dict) {
        Person *p = [[self alloc] init];
        [p setValuesForKeysWithDictionary:dict];
        return p;
    }else
    {
        return nil;
    }
}
@end
