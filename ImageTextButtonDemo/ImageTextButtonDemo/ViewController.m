//
//  ViewController.m
//  ImageTextButtonDemo
//
//  Created by 谈Xx on 2017/12/29.
//  Copyright © 2017年 谈Xx. All rights reserved.
//

#import "ViewController.h"
#import "ImageTextButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 代码方式
    ImageTextButton *btn = [ImageTextButton ITButtonWithTitle:@"账户管理" Image:@"acountS" ButtonImageType:ButtonImageTypeLeft];
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    btn.contentLeftMargin = 40;
    btn.frame = CGRectMake(100, 300, 200, 100);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
