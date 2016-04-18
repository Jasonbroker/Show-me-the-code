//
//  NSString+CalculateHeight.m
//  Show_me_the_code
//
//  Created by Jason on 4/18/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "NSString+CalculateHeight.h"

@implementation NSString (CalculateHeight)

- (CGFloat) width:(CGFloat)widthText font:(UIFont *)font{
    
    //高度估计文本大概要显示几行，宽度根据需求自己定义。 MAXFLOAT 可以算出具体要多高
    
    CGSize size =CGSizeMake(widthText,CGFLOAT_MAX);
    
    //    获取当前文本的属性
    
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName,nil];
    
    //ios7方法，获取文本需要的size，限制宽度
    
    CGSize  actualsize =[self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    
    return actualsize.height;
    
}

@end
