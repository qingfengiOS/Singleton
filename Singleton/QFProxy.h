//
//  QFProxy.h
//  Singleton
//
//  Created by 情风 on 2018/12/12.
//  Copyright © 2018 情风. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QFProxy : NSProxy

+ (instancetype)sharedPerson;
@end
