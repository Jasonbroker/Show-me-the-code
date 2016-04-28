//
//  ViewController.m
//  Show_me_the_code
//
//  Created by Jason on 4/17/16.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "ViewController.h"
#import "ZCTableViewModel.h"
#import "ZCIndexItem.h"
#import "ZCIndexModel.h"
#import "ZCAnswerViewController.h"
@interface ViewController ()<UITableViewDelegate>

@end

static NSString *pushViewController = @"ZCAnswerViewController";

@implementation ViewController{
    UITableView *_tableView;
    ZCTableViewModel *_model;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"show me the code";
    // Do any additional setup after loading the view, typically from a nib.
//    初始化题目
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    [self.view addSubview:_tableView];
    
    
    [self createModel];
}

- (void)createModel{
    
    NSArray *questions = @[
                           @"两个控制器跳转后生命周期函数的调用顺序是什么？",
                           
                           @"在iOS 中，事件是图和传递的？",
                           @"能否给一个分类添加属性？",
                           @"何时会触发离屏渲染？离屏渲染有什么问题？如何调试该问题？"
                           
                           ];
    
    NSInteger count = questions.count;
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:count];
    for (NSString *q in questions) {
        ZCIndexItem *i = [[ZCIndexItem alloc] init];
        i.question = q;
        [arr addObject:i];
    }

    
    ZCTableViewModel *model = [[ZCIndexModel alloc] initWithListArray:arr delegate:nil];
    
    
    model.data = arr;
    _model = model;
    _tableView.dataSource = model;
    _tableView.delegate = [model forwardingTo:self];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *controllerstrM = [NSString stringWithFormat:@"%@%@", pushViewController, @(indexPath.row+1)];
       ZCIndexItem *item = _model.data[indexPath.row];
    
    [self.navigationController pushViewController:[[NSClassFromString(controllerstrM) alloc] initWithQuestion:item.question] animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
