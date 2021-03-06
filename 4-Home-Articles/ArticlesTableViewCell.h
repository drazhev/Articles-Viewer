//
//  ArticlesTableViewCell.h
//  4-Home-Articles
//
//  Created by Alexandar Drajev on 12/3/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArticlesTableViewCell : UITableViewCell
@property (assign, nonatomic) IBOutlet UIImageView *thumbnailImageView;
@property (assign, nonatomic) IBOutlet UILabel *titleLabel;
@property (assign, nonatomic) IBOutlet UILabel *subtitleLabel;

@end
