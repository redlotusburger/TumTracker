//
//  FoodTableViewCell.m
//  TestGoogleAnalytics
//
//  Created by Jennifer Bieberstein on 23/07/2014.
//  Copyright (c) 2014 Jennifer Bieberstein. All rights reserved.
//

#import "FoodTableViewCell.h"

@implementation FoodTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
