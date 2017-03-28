//
//  NSObject+ChangeM.h
//  HQChangeMethod
//
//  Created by zfwlxt on 17/3/28.
//  Copyright © 2017年 何晴. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ChangeM)

+ (void)changeInstance:(NSObject *)instance method:(SEL)selector;

@end
