//
//  ZCAnswerViewController4.m
//  Show_me_the_code
//
//  Created by Jason on 5/5/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCAnswerViewController4.h"
#import "ZCTimerTestViewController.h"

@interface ZCAnswerViewController4 ()

@end

@implementation ZCAnswerViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 44, 44)];
    [button setTitle:@"click" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}

- (void)push{
    
    [self.navigationController pushViewController:[[ZCTimerTestViewController alloc] init] animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
