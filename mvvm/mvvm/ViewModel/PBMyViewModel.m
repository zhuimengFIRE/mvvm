//
//  PBMyViewModel.m
//  mvvm
//
//  Created by Playboy on 2018/6/19.
//  Copyright © 2018年 Playboy. All rights reserved.
//

#import "PBMyViewModel.h"
#import "PBMyModel.h"

@implementation PBMyViewModel

- (void)headerRefreshWithCallback:(callback)callback {
    
    // 后台执行：
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            // 主线程刷新视图
            NSMutableArray *arr=[NSMutableArray array];
            for (int i=0; i<16; i++) {
                int x = arc4random() % 100;
                NSString *string=[NSString stringWithFormat:@"随机数：%d",x];
                PBMyModel *model=[[PBMyModel alloc] init];
                model.title=string;
                [arr addObject:model];
            }
            callback(arr);
        });
    });
    
}

- (void)fooerRefreshWithCallback:(callback)callback {
    
    // 后台执行：
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            // 主线程刷新视图
            NSMutableArray *arr=[NSMutableArray array];
            for (int i=0; i<16; i++) {
                int x = arc4random() % 100;
                NSString *string=[NSString stringWithFormat:@"随机数：%d",x];
                PBMyModel *model=[[PBMyModel alloc] init];
                model.title=string;
                [arr addObject:model];
            }
            callback(arr);
        });
    });
    
}

@end
