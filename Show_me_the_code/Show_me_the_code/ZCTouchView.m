//
//  ZCTouchView.m
//  Show_me_the_code
//
//  Created by Jason on 4/18/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCTouchView.h"

@implementation ZCTouchView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    NSLog(@"tag:%@", @(self.tag));
    return [super hitTest:point withEvent:event];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    BOOL inside = [super pointInside:point withEvent:event];
    return YES;
}

@end
