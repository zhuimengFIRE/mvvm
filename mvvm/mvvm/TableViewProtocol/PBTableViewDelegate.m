//
//  PBTableViewDelegate.m
//  mvvm
//
//  Created by Playboy on 2018/6/19.
//  Copyright © 2018年 Playboy. All rights reserved.
//

#import "PBTableViewDelegate.h"
#import "PBMyTableViewCell.h"
#import "PBMyModel.h"

@implementation PBTableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PBMyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[PBMyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    PBMyModel *model = _array[indexPath.row];
    cell.label.text = model.title;
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (_array.count > 0) {
        PBMyModel *model = _array[indexPath.row];
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"tip" message:model.title preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alert addAction:cancel];
        
        [self.jumpVC presentViewController:alert animated:YES completion:nil];
        
    }
}
@end
