
//
//  SinglePerson.m
//  Singleton
//
//  Created by iosyf-02 on 2018/2/5.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "SinglePerson.h"

@implementation SinglePerson

static id singlePerson;


/**
 当类加载到运行环境中的时候就会调用且仅调用一次，同时注意一个类只会加载一次，在此时就创建singlePerson
 */
+ (void)load {
    singlePerson = [[self alloc]init];
    
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (singlePerson == nil) {
        singlePerson = [super allocWithZone:zone];
//        singlePerson = [NSAllocateObject([self class], 0, NULL) init];
    }
    return singlePerson;
}

+ (instancetype)sharedPerson {
    return singlePerson;
}

- (id)copyWithZone:(NSZone *)zone {
    return singlePerson;
}

/*
 我们可以发现有简洁了很多，去掉了多线程的问题的加锁方案，我们来分析下原因，首先，在类被加载的时候会调用且仅调用一次load方法，而load方法里面又调用了alloc方法，所以，第一次调用肯定是创建好了对象，而且这时候不会存在多线程问题。当我们手动去使用alloc的时候，无论如何都过不了判断，所以也不会存在多线程的问题了。
 */
@end
