//
//  ZCAnswerViewController2.m
//  Show_me_the_code
//
//  Created by Jason on 4/18/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCAnswerViewController2.h"
#import "ZCTouchView.h"
@interface ZCAnswerViewController2 ()

@end

@implementation ZCAnswerViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGFloat width = CGRectGetWidth(self.view.frame);
    NSInteger count = 10;
    CGFloat padding = (width - 20)*0.5f/count;
    CGFloat originalY = CGRectGetMinY(self.anwserView.frame);
    for (int i = 0; i< count; i++) {
        CGFloat innerPadding = i*padding;
        ZCTouchView *view = [[ZCTouchView alloc] initWithFrame:CGRectMake(innerPadding, originalY + innerPadding, width - 2*innerPadding, width - 2*innerPadding)];
        view.backgroundColor = [UIColor colorWithWhite:i*1.0/count alpha:1];
        view.tag = 100 + i;
        [self.view addSubview:view];
    }
    
    ZCTouchView *touchView = nil;
    for (int i = 0; i< count; i++) {
        CGFloat innerPadding = i*padding;
        if (nil == touchView) {
            touchView = [[ZCTouchView alloc] initWithFrame:CGRectMake(innerPadding, originalY + innerPadding, width - 2*innerPadding, width - 2*innerPadding)];
            touchView.backgroundColor = [UIColor colorWithWhite:i*1.0/count alpha:1];
            touchView.tag = 200 + i;
            [self.view addSubview:touchView];
        }else{
            CGFloat width = CGRectGetWidth(touchView.frame) - 2*padding;
            ZCTouchView *view = [[ZCTouchView alloc] initWithFrame:CGRectMake(padding, padding, width, width)];
            view.backgroundColor = [UIColor colorWithWhite:i*1.0/count alpha:1];
            view.tag = 200 + i;
            [touchView addSubview:view];
            touchView = view;
        }
    }
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
