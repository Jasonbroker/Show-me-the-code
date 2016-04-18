//
//  ZCTableViewModel.h
//  Show_me_the_code
//
//  Created by Jason on 4/17/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZCTableViewModel;
@protocol ZCTableViewModelDelegate <NSObject>

@required

/**
 * Fetches a table view cell at a given index path with a given object.
 *
 * The implementation of this method will generally use object to customize the cell.
 */
- (UITableViewCell *)tableViewModel: (ZCTableViewModel *)tableViewModel
                   cellForTableView: (UITableView *)tableView
                        atIndexPath: (NSIndexPath *)indexPath
                         withObject: (id)object;


@end


@interface ZCTableViewModel : NSObject<UITableViewDataSource, UITableViewDelegate>

- (instancetype)initWithListArray:(NSArray *) array delegate:(id<ZCTableViewModelDelegate>) createDelegate;
@property (nonatomic, strong) NSArray *data;

@property (nonatomic, weak) id<ZCTableViewModelDelegate> delegate;

- (id)forwardingTo:(id)forwordingDelegate;

@end
