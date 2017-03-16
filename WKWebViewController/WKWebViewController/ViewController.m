//
//  ViewController.m
//  WKWebViewController
//
//  Created by BANYAN on 2017/3/16.
//  Copyright © 2017年 GREEN BANYAN. All rights reserved.
//

#import "ViewController.h"
#import "WKWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * jump = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [jump setTitle:@"跳转网页" forState:UIControlStateNormal];
    [jump setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    jump.backgroundColor = [UIColor orangeColor];
    [jump addTarget:self action:@selector(jumpAC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jump];
}

-(void)jumpAC{
    
    WKWebViewController * webVC = [[WKWebViewController alloc]initWithUrl:[NSURL URLWithString:@"http://www.baidu.com"]];
    [self.navigationController pushViewController:webVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
