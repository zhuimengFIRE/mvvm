//
//  TMRefreshHelper.h
//  TMtravel
//
//  Created by Playboy on 2017/3/14.
//  Copyright © 2017年 tmkj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJRefresh.h"

@interface TMRefreshHelper : NSObject

+ (MJRefreshHeader *)headerRefresh:(UIScrollView *)scrollView withTarget:(id)target action:(SEL)action;

+ (MJRefreshFooter *)footerRefresh:(UIScrollView *)scrollView withTarget:(id)target action:(SEL)action;

@end
