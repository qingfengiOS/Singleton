//
//  Person.m
//  Singleton
//
//  Created by iosyf-02 on 2018/2/5.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "Person.h"

@implementation Person

static id person;

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (person == nil) {
        @synchronized(self) {//加锁
            person = [super allocWithZone:zone];
        }
    }
    return person;
}

/**
 单例创建方法

 @return person单例
 */
+ (instancetype)sharedPerson {
    if (person == nil) {
        @synchronized(self) {
            person = [[self alloc]init];
        }
    }
    return person;
}

- (id)copyWithZone:(NSZone *)zone {
    return person;
}

@end
