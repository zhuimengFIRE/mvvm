//
//  PBMyViewModel.h
//  mvvm
//
//  Created by Playboy on 2018/6/19.
//  Copyright © 2018年 Playboy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^callback)(NSArray *array);

@interface PBMyViewModel : NSObject

- (void)headerRefreshWithCallback:(callback)callback;

- (void)fooerRefreshWithCallback:(callback)callback;

@end
