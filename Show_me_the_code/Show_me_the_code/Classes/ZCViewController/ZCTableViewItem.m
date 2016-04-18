//
//  ZCTableViewItem.m
//  Show_me_the_code
//
//  Created by Jason on 4/17/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCTableViewItem.h"
#import "ZCTableViewCell.h"
@implementation ZCTableViewItem


- (UITableViewCellStyle)cellStyle{
    return UITableViewCellStyleDefault;
}

- (UITableViewCell *)cellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath{
    
    NSString *className = [self cellClass];
       ZCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self cellClass]];
    
    if (!cell) {
        Class cellClass = NSClassFromString([self cellClass]);
        cell = [[cellClass alloc] initWithStyle:[self cellStyle] reuseIdentifier:className];
    }
    
    [cell shouldUpdateCellWithObject:self];
    
    return cell;
}

- (CGFloat)cellHeightForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

- (NSString *)cellClass{
    
    return @"ZCTableViewCell";

}

@end
