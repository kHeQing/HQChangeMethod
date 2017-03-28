//
//  ViewController.m
//  HQChangeMethod
//
//  Created by zfwlxt on 17/3/28.
//  Copyright © 2017年 何晴. All rights reserved.
//

#import "ViewController.h"
#import "HQViewController.h"
#import "NSObject+ChangeM.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    HQViewController *viewC1 = [[HQViewController alloc]init];
    [viewC1 log];
    
    HQViewController *viewC2 = [[HQViewController alloc]init];
    [HQViewController changeInstance:viewC2 method:@selector(log)];
    [viewC2 log];
    
}


@end
