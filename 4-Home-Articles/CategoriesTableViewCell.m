//
//  CategoriesTableViewCell.m
//  4-Home-Articles
//
//  Created by Alexandar Drajev on 12/3/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "CategoriesTableViewCell.h"

@implementation CategoriesTableViewCell

-(id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.transform = CGAffineTransformMakeRotation(M_PI_2);
        self.categoryImageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)dealloc {
    [super dealloc];
}
@end
