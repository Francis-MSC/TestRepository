//
//  ViewController.m
//  Test
//
//  Created by msc on 17/2/27.
//  Copyright © 2017年 Ehu. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
    btn.backgroundColor = [UIColor greenColor];
    NSInteger num = [Calculator add:5];
    [btn setTitle:[NSString stringWithFormat:@"%ld",num] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    NSLog(@"123");
}


-(void)btnAction{
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"dafdafafd" preferredStyle:UIAlertControllerStyleAlert];
    [ac addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"123");
    }]];
    [ac addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"456");
    }]];
    [self presentViewController:ac animated:YES completion:nil];
    
    CGFloat a = 1.25;
    NSString *aStr = [NSString stringWithFormat:@"%.1f",a];
    NSLog(@"%@",aStr);
    CGFloat b = [@"1.25" doubleValue];
    NSString *bStr = [NSString stringWithFormat:@"%.1f",b];
    NSLog(@"%@",bStr);
    CGFloat c = [@1.25 doubleValue];
    NSString *cStr = [NSString stringWithFormat:@"%.1f",c];
    NSLog(@"%@",cStr);
}


@end
