//
//  ViewController.m
//  UIBezierPathTest
//
//  Created by 黄伟强 on 2017/10/11.
//  Copyright © 2017年 hwq. All rights reserved.
//

#import "ViewController.h"
#import "HWQBzeierPathView.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HWQBzeierPathView *hwq = [[HWQBzeierPathView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    hwq.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:hwq];
}

@end
