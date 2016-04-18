//
//  ZCQuestion1TableViewController.m
//  Show_me_the_code
//
//  Created by Jason on 4/18/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCAnswerViewController1.h"

@interface ZCAnswerViewController1 ()

@end

@implementation ZCAnswerViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *answer = @"请参考控制台打印.\n\
    首先是push消息发出后，旧的controller意识到自己要挂了，所以\n\
    1. 调用viewWillDisappear: \n\
    2. 新的控制器的view将开始加载viewDidLoad:\n\
    3. vieWillAppear:视图将要出现\n\
    4. viewWillLayoutSubviews开始布局\n\
    5. viewDidLayoutSubviews布局结束\n\
    6. 新controller 准备完毕，来源viewcontroller 可以发viewDidDisappear:\n\
    注意：这时新的controller 界面已经出现了。\n\
    7. 新的controller 出现 viewDidAppear: 被调用\n\
    ";
    
    self.answer = answer;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
