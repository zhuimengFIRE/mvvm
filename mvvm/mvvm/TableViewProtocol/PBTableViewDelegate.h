//
//  PBTableViewDelegate.h
//  mvvm
//
//  Created by Playboy on 2018/6/19.
//  Copyright © 2018年 Playboy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PBTableViewDelegate : NSObject<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray    *array;
@property (nonatomic, weak) UIViewController *jumpVC;

@end
