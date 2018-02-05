//
//  GCDSinglePerson.m
//  Singleton
//
//  Created by iosyf-02 on 2018/2/5.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "GCDSinglePerson.h"

static GCDSinglePerson *gcdsinglePerson;

@implementation GCDSinglePerson

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (gcdsinglePerson == nil) {
            gcdsinglePerson = [super allocWithZone:zone];
        }
    });
    return gcdsinglePerson;
    
}

+ (instancetype)sharedPerson {
  
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        gcdsinglePerson = [[self alloc]init];
    });
    return gcdsinglePerson;
}

- (id)copyWithZone:(NSZone *)zone{
    return gcdsinglePerson;
}

@end
