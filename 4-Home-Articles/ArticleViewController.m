//
//  ArticleViewController.m
//  4-Home-Articles
//
//  Created by Alexandar Drajev on 12/3/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "ArticleViewController.h"

@interface ArticleViewController ()

@end

@implementation ArticleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.pictureScrollView.minimumZoomScale = 0.5;
    self.pictureScrollView.maximumZoomScale = 4;
    self.pictureScrollView.delegate = self;
	self.articlePictureImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.pictureScrollView.frame.origin.x, self.pictureScrollView.frame.origin.y, self.selectedArticle.thumbnail.size.width, self.selectedArticle.thumbnail.size.height)];
    self.articlePictureImageView.image = self.selectedArticle.thumbnail;
    [self.pictureScrollView addSubview:self.articlePictureImageView];
    self.pictureScrollView.contentSize = CGSizeMake(self.selectedArticle.thumbnail.size.width, self.selectedArticle.thumbnail.size.height);
    [self.articlePictureImageView release];
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.articlePictureImageView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_articlePictureImageView release];
    [_selectedArticle release];
    [super dealloc];
}
@end
