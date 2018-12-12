//
//  ViewController.m
//  Singleton
//
//  Created by iosyf-02 on 2018/2/5.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "SinglePerson.h"
#import "GCDSinglePerson.h"
#import "SubPerson.h"

#import "QFSubProxy.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self testNSObject];
    NSLog(@"--------------------下面是NSProxy------------------------");
    [self testNSProxy];

}
- (void)testNSObject {
    Person *p = [Person sharedPerson];
    Person *p2 = [[Person alloc]init];
    Person *p3 = [p copy];
    NSLog(@"\np = %@\n, p2 = %@\n, p3 = %@", p,p2,p3);
    NSLog(@"--------------------------------------------");
    
    SinglePerson *singlePerson = [SinglePerson sharedPerson];
    SinglePerson *singlePerson2 = [[SinglePerson alloc]init];
    SinglePerson *singlePerson3 = [singlePerson copy];
    NSLog(@"\np = %@\n, p2 = %@\n, p3 = %@", singlePerson,singlePerson2,singlePerson3);
    NSLog(@"--------------------------------------------");
    
    GCDSinglePerson *gcdPerson = [GCDSinglePerson sharedPerson];
    GCDSinglePerson *gcdPerson2 = [[GCDSinglePerson alloc]init];
    GCDSinglePerson *gcdPerson3 = [gcdPerson copy];
    NSLog(@"\np = %@\n, p2 = %@\n, p3 = %@", gcdPerson,gcdPerson2,gcdPerson3);
    
    NSLog(@"--------------------------------------------");
    SubPerson *subPerson = [SubPerson sharedPerson];
    SubPerson *subPerson2 = [[SubPerson alloc]init];
    SubPerson *subPerson3 = [subPerson copy];
    NSLog(@"\np = %@\n, p2 = %@\n, p3 = %@", subPerson,subPerson2,subPerson3);
}

- (void)testNSProxy {
    QFProxy *proxy = [QFProxy sharedPerson];
    QFProxy *proxy2 = [QFProxy alloc];
    NSLog(@"\np = %@\n, p2 = %@\n", proxy,proxy2);
    
    NSLog(@"--------------------------------------------");
    
    QFSubProxy *subProxy = [QFSubProxy sharedPerson];
    QFSubProxy *subProxy2 = [QFSubProxy alloc];
    NSLog(@"\np = %@\n, p2 = %@\n", subProxy,subProxy2);
}


@end
