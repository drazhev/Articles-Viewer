//
//  ArticleViewController.h
//  4-Home-Articles
//
//  Created by Alexandar Drajev on 12/3/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Article.h"

@interface ArticleViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, retain) Article* selectedArticle;
@property (nonatomic, assign) IBOutlet UIScrollView *pictureScrollView;
@property (nonatomic, retain) UIImageView* articlePictureImageView;

@end
