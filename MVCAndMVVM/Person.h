//
//  Person.h
//  MVCAndMVVM
//
//  Created by hsm on 2017/6/10.
//  Copyright © 2017年 SM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic, copy)NSString *name;
@property(nonatomic, copy)NSString *userId;


+ (instancetype)personModelWithDict:(NSDictionary *)dict;
@end
