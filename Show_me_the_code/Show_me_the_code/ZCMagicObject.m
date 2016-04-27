//
//  ZCMagicObject.m
//  Show_me_the_code
//
//  Created by Jason on 4/21/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCMagicObject.h"
#import <objc/runtime.h>
@implementation ZCMagicObject

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

@end

@implementation ZCMagicObject (addProperty)

@dynamic name;

static void *strKey = &strKey;

- (void)setName:(NSString *)name{
    objc_setAssociatedObject(self, strKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)name{
       NSString *name = objc_getAssociatedObject(self, strKey);
    return name;
}

@end