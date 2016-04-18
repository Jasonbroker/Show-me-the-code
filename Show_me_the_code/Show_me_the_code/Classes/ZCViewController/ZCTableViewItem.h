//
//  ZCTableViewItem.h
//  Show_me_the_code
//
//  Created by Jason on 4/17/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZCTableViewItem : NSObject

// 最好是以代理的形式传递
- (UITableViewCellStyle)cellStyle;

- (NSString *)cellClass;

- (UITableViewCell *)cellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath;

- (CGFloat)cellHeightForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath;
@end
