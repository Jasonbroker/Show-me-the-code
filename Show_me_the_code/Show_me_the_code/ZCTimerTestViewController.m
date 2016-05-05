//
//  ZCTimerTestViewController.m
//  Show_me_the_code
//
//  Created by Jason on 5/5/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCTimerTestViewController.h"

@interface ZCTimerTestViewController ()

@property (nonatomic, strong)NSTimer *timer;

@end

@implementation ZCTimerTestViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(run) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:UITrackingRunLoopMode];
}

- (void)run{
    
    NSLog(@"run");
}

- (void)viewDidDisappear:(BOOL)animated{

    [super viewDidDisappear:animated];
    
    [self.timer invalidate];

}

- (void)dealloc{

    // 你可能认为这样timer 就已经消除了。但是并没有调用
//    当timer 被强引用的时候，就不可能调用dealloc
    NSLog(@"timer view controller dealloced");
    [self.timer invalidate];
    
    
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
