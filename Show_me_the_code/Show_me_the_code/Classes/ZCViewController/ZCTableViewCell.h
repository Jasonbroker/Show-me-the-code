//
//  ZCTableViewCell.h
//  Show_me_the_code
//
//  Created by Jason on 4/17/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZCTableViewCellDelegate <NSObject>

//- (UITableViewCellStyle)cellStyle;
//
//- (Class)cellClass;

- (BOOL)shouldUpdateCellWithObject:(id)object;

@end

@interface ZCTableViewCell : UITableViewCell<ZCTableViewCellDelegate>

@end
