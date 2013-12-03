//
//  ArticlesTableViewController.h
//  4-Home-Articles
//
//  Created by Alexandar Drajev on 12/3/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArticlesInfo.h"
#import "ArticlesTableViewCell.h"
#import "CategoriesTableViewCell.h"
#import "ArticleViewController.h"

@interface IssueScreenViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (assign, nonatomic) IBOutlet UITableView *articlesTableView;
@property (assign, nonatomic) IBOutlet UITableView *categoriesTableView;

@end
