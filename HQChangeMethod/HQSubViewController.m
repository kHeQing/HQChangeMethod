//
//  HQSubViewController.m
//  HQChangeMethod
//
//  Created by zfwlxt on 17/3/28.
//  Copyright © 2017年 何晴. All rights reserved.
//

#import "HQSubViewController.h"
#import <objc/message.h>


@interface HQSubViewController ()

@end

@implementation HQSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)log{
    
    NSLog(@"HQtest2");
    
    struct objc_super superClass = {
        .receiver = self,
        .super_class = class_getSuperclass(object_getClass(self))
    };
    
    void (*objc_msgSendSuperClass)(void *,SEL) = (void *)objc_msgSendSuper;
    objc_msgSendSuperClass(&superClass,_cmd);
//    _cmd在Objective-C的方法中表示当前方法的selector
    
}




@end
