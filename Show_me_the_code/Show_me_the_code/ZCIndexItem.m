//
//  ZCIndexItem.m
//  Show_me_the_code
//
//  Created by Jason on 4/17/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCIndexItem.h"

@implementation ZCIndexItem

- (NSString *)cellClass{
    return NSStringFromClass([ZCIndexCell class]);
}

- (UITableViewCellStyle)cellStyle{
    return UITableViewCellStyleDefault;
}

- (CGFloat)cellHeightForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath{

    return [self stringHeight:self.question width:CGRectGetWidth(tableView.bounds) font:14.f] + 20;
    
}

- (CGFloat)stringHeight:(NSString *)string width:(CGFloat)widthText font:(CGFloat)fontSize{
    
    UIFont * font = [UIFont systemFontOfSize:fontSize];
    
    //高度估计文本大概要显示几行，宽度根据需求自己定义。 MAXFLOAT 可以算出具体要多高
    
    CGSize size =CGSizeMake(widthText,CGFLOAT_MAX);
    
    //    获取当前文本的属性
    
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName,nil];
    
    //ios7方法，获取文本需要的size，限制宽度
    
    CGSize  actualsize =[string boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    
    return actualsize.height;
    
}

@end


@interface ZCIndexCell ()

@property (nonatomic, strong)CATextLayer *textLayer;

@end

@implementation ZCIndexCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
       self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
    
        _textLayer = [[CATextLayer alloc] init];
        
        [self.contentView.layer addSublayer:_textLayer];
        
    }
    
    return self;
}


// 用来更新cell
- (BOOL)shouldUpdateCellWithObject:(id)object{
    
    if (![object isKindOfClass:[ZCIndexItem class]]) {
        return NO;
    }
    ZCIndexItem *q = object;
    _textLayer.frame = CGRectMake(10, 10, CGRectGetWidth(self.contentView.frame), CGRectGetHeight(self.contentView.frame));
    _textLayer.fontSize = 14;
    _textLayer.foregroundColor = [UIColor blackColor].CGColor;
    _textLayer.contentsScale = [UIScreen mainScreen].scale;
    _textLayer.string = q.question;

    return YES;
}


@end