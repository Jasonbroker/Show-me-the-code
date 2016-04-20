//
//  ZCAnswerViewController.h
//  Show_me_the_code
//
//  Created by Jason on 4/18/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCViewController.h"

@interface ZCAnswerViewController : ZCViewController

- (instancetype)initWithQuestion:(NSString *)question;

@property (nonatomic, copy)NSString *answer;

@property (nonatomic, strong) UITextView *anwserView;
@end
