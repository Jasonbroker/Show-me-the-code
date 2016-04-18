//
//  ZCViewController.m
//  Show_me_the_code
//
//  Created by Jason on 4/17/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCViewController.h"

@interface ZCViewController ()

@end

@implementation ZCViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSLog(@"-[%@__%@__]-", self.class, NSStringFromSelector(_cmd));
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"-[%@__%@__]-", self.class, NSStringFromSelector(_cmd));
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"-[%@__%@__]-", self.class, NSStringFromSelector(_cmd));
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"-[%@__%@__]-", self.class, NSStringFromSelector(_cmd));
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"-[%@__%@__]-", self.class, NSStringFromSelector(_cmd));
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"-[%@__%@__]-", self.class, NSStringFromSelector(_cmd));
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"-[%@__%@__]-", self.class, NSStringFromSelector(_cmd));
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
