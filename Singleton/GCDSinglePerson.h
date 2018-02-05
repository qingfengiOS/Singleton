//
//  GCDSinglePerson.h
//  Singleton
//
//  Created by iosyf-02 on 2018/2/5.
//  Copyright © 2018年 情风. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GCDSinglePerson : NSObject<NSCopying>

/// 名字
@property (nonatomic, copy) NSString *name;

/// 年龄
@property (nonatomic, assign) NSInteger age;

+ (instancetype)sharedPerson;


@end
