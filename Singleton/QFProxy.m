//
//  QFProxy.m
//  Singleton
//
//  Created by 情风 on 2018/12/12.
//  Copyright © 2018 情风. All rights reserved.
//

#import "QFProxy.h"

static id singlePoxy;

@implementation QFProxy

/**
 当类加载到运行环境中的时候就会调用且仅调用一次，同时注意一个类只会加载一次，在此时就创建singlePerson
 */
+ (void)load {
    singlePoxy = [self alloc];
    
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (singlePoxy == nil) {
//        singlePoxy = [super allocWithZone:zone];
        singlePoxy = NSAllocateObject([self class], 0, NULL);//使用这种方式 也没实现子类化 暂时有点困惑！！
    }
    return singlePoxy;
}

+ (instancetype)sharedPerson {
    return singlePoxy;
}

@end
