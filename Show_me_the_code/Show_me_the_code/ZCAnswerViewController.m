//
//  ZCAnswerViewController.m
//  Show_me_the_code
//
//  Created by Jason on 4/18/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCAnswerViewController.h"
#import "NSString+CalculateHeight.h"
@interface ZCAnswerViewController ()

@property (nonatomic, strong)UILabel *questionLabel;

@property (nonatomic, copy)NSString *question;

@end

@implementation ZCAnswerViewController


- (instancetype)initWithQuestion:(NSString *)question{
    self = [super init];
    
    if (self) {
        self.question = question;

    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _questionLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _questionLabel.numberOfLines = 0;
    _questionLabel.text = self.question;
    CGFloat padding = 10.f;
    CGFloat labelwidth = CGRectGetWidth(self.view.frame) - padding*2;
    CGFloat height = [self.question width:labelwidth font:_questionLabel.font];
    _questionLabel.frame = CGRectMake(padding, 64, labelwidth, height + padding *2);
    [self.view addSubview:_questionLabel];
    
    _anwserView = [[UITextView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_questionLabel.frame), labelwidth, CGRectGetMaxY(self.view.frame) - CGRectGetMaxY(_questionLabel.frame))];
    _anwserView.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:_anwserView];
    
    _anwserView.text = _answer;
}

- (void)setAnswer:(NSString *)answer{
    
    _answer = [answer copy];
    if (_anwserView) {
        _anwserView.text = _answer;
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
