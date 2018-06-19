//
//  PBMyTableViewCell.m
//  mvvm
//
//  Created by Playboy on 2018/6/19.
//  Copyright © 2018年 Playboy. All rights reserved.
//

#import "PBMyTableViewCell.h"

@implementation PBMyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, self.frame.size.width-100, 50)];
        _label.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_label];
    }
    return self;
}

@end
