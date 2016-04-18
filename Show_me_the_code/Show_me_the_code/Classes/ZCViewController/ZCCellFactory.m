//
//  ZCCellFactory.m
//  Show_me_the_code
//
//  Created by Jason on 4/17/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCCellFactory.h"
#import "ZCTableViewModel.h"
#import "ZCTableViewCell.h"
@interface ZCCellFactory ()<ZCTableViewModelDelegate>

@end

@implementation ZCCellFactory

- (UITableViewCell *)tableViewModel:(ZCTableViewModel *)tableViewModel cellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath withObject:(id)object{

    UITableViewCell* cell = nil;
    
    Class cellClass = [self cellClassFromObject:object];
    if (nil != cellClass) {
        cell = [[self class] cellWithClass:cellClass tableView:tableView object:object];
        
    }
    // If this assertion fires then your app is about to crash. You need to either add an explicit
    // binding in a NICellFactory object or implement the NICellObject protocol on this object and
    // return a cell class.
    NSAssert(nil != cell, @"出事了");
    
    return cell;
    
}

- (Class)cellClassFromObject:(NSObject *)object{
    return object.class;
}

+ (UITableViewCell *)cellWithClass:(Class)cellClass
                         tableView:(UITableView *)tableView
                            object:(id)object {
    UITableViewCell* cell = nil;
    
    NSString* identifier = NSStringFromClass(cellClass);
    
    cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (nil == cell) {
        UITableViewCellStyle style = UITableViewCellStyleDefault;
        if ([object respondsToSelector:@selector(cellStyle)]) {
            style = (int)[object performSelector:@selector(cellStyle)];
        }
        cell = [[cellClass alloc] initWithStyle:style reuseIdentifier:identifier];
    }
    
    // Allow the cell to configure itself with the object's information.
    if ([cell respondsToSelector:@selector(shouldUpdateCellWithObject:)]) {
        [(id<ZCTableViewCellDelegate>)cell shouldUpdateCellWithObject:object];
    }
    
    return cell;
}


@end
