//
//  ZCTableViewModel.m
//  Show_me_the_code
//
//  Created by Jason on 4/17/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCTableViewModel.h"
#import "ZCTableViewItem.h"
@interface ZCTableViewModel ()

@property (nonatomic, strong)NSMutableSet *forwordingDelegates;
@end

@implementation ZCTableViewModel


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.forwordingDelegates = [NSMutableSet set];
    }
    return self;
}

- (id)forwardingTo:(id)forwordingDelegate{
    [self.forwordingDelegates addObject:forwordingDelegate];
    return self;
}

- (instancetype)initWithListArray:(NSArray *)array delegate:(id<ZCTableViewModelDelegate>)createDelegate{
    
    self = [self init];
    
    self.data = array;
    self.delegate = createDelegate;
    
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.data.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ZCTableViewItem *item = self.data[indexPath.row];
    return [item cellHeightForTableView:tableView atIndexPath:indexPath];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZCTableViewItem *item = self.data[indexPath.row];
    
      UITableViewCell* cell = [item cellForTableView:tableView atIndexPath:indexPath];
    
    
//    if (nil == cell) {
//        cell = [self.delegate tableViewModel:self
//                            cellForTableView:tableView
//                                 atIndexPath:indexPath
//                                  withObject:item];
//    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{


    if (!self.forwordingDelegates.count) return;
    for (NSObject<UITableViewDelegate> *delegate in _forwordingDelegates) {
        if ([delegate respondsToSelector:_cmd]) {
            [delegate tableView:tableView didSelectRowAtIndexPath:indexPath];
        }
    }
    
    
}

@end
