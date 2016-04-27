//
//  ZCMagicObject.h
//  Show_me_the_code
//
//  Created by Jason on 4/21/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ZCMagicObject : NSObject

@property (nonatomic, copy)NSString *firstName;

@end

@interface ZCMagicObject (addProperty)

@property (nonatomic, copy)NSString *name;

@end