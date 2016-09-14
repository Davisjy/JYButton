//
//  ViewController.m
//  ChangeButton
//
//  Created by Davis on 16/9/14.
//  Copyright © 2016年 Davis. All rights reserved.
//

#import "ViewController.h"
#import "JYButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    JYButton *btn = [JYButton getButtonWithTitle:@"点我" titleFont:0 titleColor:nil andIcon:@"fangke" andType:JYButtonTitleTypeBottom];
    
    btn.frame = CGRectMake(100, 100, 80, 80);
    
    [self.view addSubview:btn];
    
    JYButton *btn1 = [JYButton getButtonWithTitle:@"点我" titleFont:0 titleColor:nil andIcon:@"fangke" andType:JYButtonTitleTypeTop];
    
    btn1.frame = CGRectMake(100, 200, 80, 80);
    
    [self.view addSubview:btn1];
    
    JYButton *btn2 = [JYButton getButtonWithTitle:@"点我" titleFont:0 titleColor:nil andIcon:@"fangke" andType:JYButtonTitleTypeLeft];
    
    btn2.frame = CGRectMake(100, 300, 60, 25);
    
    [self.view addSubview:btn2];
}

@end
