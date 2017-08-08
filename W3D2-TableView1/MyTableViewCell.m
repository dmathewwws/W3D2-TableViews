//
//  MyTableViewCell.m
//  W3D2-TableView1
//
//  Created by Daniel Mathews on 2017-08-08.
//  Copyright © 2017 ToyBox Media. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)prepareForReuse{
    [super prepareForReuse];
    [self.titleButton setTitle:@"" forState:UIControlStateNormal];
}

@end
