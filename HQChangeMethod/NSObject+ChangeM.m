//
//  NSObject+ChangeM.m
//  HQChangeMethod
//
//  Created by zfwlxt on 17/3/28.
//  Copyright © 2017年 何晴. All rights reserved.
//

#import "NSObject+ChangeM.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "HQSubViewController.h"

@implementation NSObject (ChangeM)

+ (void)changeInstance:(NSObject *)instance method:(SEL)selector{
    
    Method oldMethod = class_getInstanceMethod([instance class], selector);
    if (!oldMethod) {
        NSLog(@"方法不存在");
        return;
    }
    
    Class newClass = [HQSubViewController class];
    
    // 将原类中的isa指针指向 自类
    object_setClass(instance, newClass);
}

@end
