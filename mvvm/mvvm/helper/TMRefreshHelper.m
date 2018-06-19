//
//  TMRefreshHelper.m
//  TMtravel
//
//  Created by Playboy on 2017/3/14.
//  Copyright © 2017年 tmkj. All rights reserved.
//

#import "TMRefreshHelper.h"

@implementation TMRefreshHelper
+(MJRefreshHeader *)headerRefresh:(UIScrollView *)scrollView withTarget:(id)target action:(SEL)action{
    MJRefreshNormalHeader *lHeader=[MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:action];
    lHeader.lastUpdatedTimeLabel.hidden=YES;
    scrollView.mj_header=lHeader;
    [lHeader setTitle:@"下拉可以刷新" forState:MJRefreshStateIdle];
    [lHeader setTitle:@"松开立即刷新" forState:MJRefreshStatePulling];
    [lHeader setTitle:@"正在刷新数据中..." forState:MJRefreshStateRefreshing];
    return lHeader;
    
    
//    NSMutableArray *headerImages = [[NSMutableArray alloc] init];
//    for (int i = 0; i < 38; i++) {
//        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"topload%d",i]];
//        [headerImages addObject:image];
//    }
//
//    MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingTarget:target refreshingAction:action];
//    header.stateLabel.hidden = YES;
//    header.lastUpdatedTimeLabel.hidden = YES;
//    scrollView.mj_header = header;
//    [header setImages:@[headerImages[0]] forState:MJRefreshStateIdle];
//    [header setImages:headerImages forState:MJRefreshStateRefreshing];
//
//
//    return header;
    
}
+(MJRefreshFooter *)footerRefresh:(UIScrollView *)scrollView withTarget:(id)target action:(SEL)action{
    MJRefreshBackNormalFooter *lFooter=[MJRefreshBackNormalFooter footerWithRefreshingTarget:target refreshingAction:action];
//    lFooter.arrowView.image=[UIImage imageNamed:@"refresh_arrow"];
    [lFooter setTitle:@"没有更多了" forState:MJRefreshStateNoMoreData];
    scrollView.mj_footer=lFooter;
    [lFooter setTitle:@"上拉可以加载" forState:MJRefreshStateIdle];
    [lFooter setTitle:@"松开立即加载" forState:MJRefreshStatePulling];
    [lFooter setTitle:@"正在加载更多..." forState:MJRefreshStateRefreshing];
    return lFooter;
}
@end
