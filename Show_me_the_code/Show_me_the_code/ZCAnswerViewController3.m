//
//  ZCAnswerViewController3.m
//  Show_me_the_code
//
//  Created by Jason on 4/21/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ZCAnswerViewController3.h"
#import "ZCMagicObject.h"

@interface ZCAnswerViewController3 ()

@end

@implementation ZCAnswerViewController3


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ZCMagicObject *object = [[ZCMagicObject alloc] init];
    [object setName:@"test category"];
    NSLog(@"%@", object.name);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
