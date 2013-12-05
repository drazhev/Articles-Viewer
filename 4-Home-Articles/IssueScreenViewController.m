//
//  ArticlesTableViewController.m
//  4-Home-Articles
//
//  Created by Alexandar Drajev on 12/3/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "IssueScreenViewController.h"

@interface IssueScreenViewController ()

@end

@implementation IssueScreenViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.articlesTableView.delegate = self;
    self.articlesTableView.dataSource = self;
    self.categoriesTableView.delegate = self;
    self.categoriesTableView.dataSource = self;
    self.categoriesTableView.transform = CGAffineTransformMakeRotation(-M_PI_2);
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView == self.categoriesTableView) {
        [self.articlesTableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:indexPath.row] atScrollPosition:UITableViewScrollPositionTop animated:YES];
    }
    else {
        ArticlesInfo* articlesData = [ArticlesInfo sharedArticlesInfo];
        [self performSegueWithIdentifier:@"articleChosenSegue" sender:articlesData.articlesArray[indexPath.section][indexPath.row]];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (tableView == self.articlesTableView) {
        return 5;
    }
    else {
        return 1;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.articlesTableView) {
        return 8;
    }
    else {
        return 5;
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (tableView == self.articlesTableView) {
        ArticlesInfo* articlesData = [ArticlesInfo sharedArticlesInfo];
        return articlesData.categoriesArray[section];
    }
    else {
        return @"";
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 15;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ArticlesInfo* articlesData = [ArticlesInfo sharedArticlesInfo];
    if (tableView == self.articlesTableView) {
        static NSString *CellIdentifier = @"ArticleCell";
        ArticlesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        Article* currentArticle = (articlesData.articlesArray)[indexPath.section][indexPath.row];
        cell.titleLabel.text = currentArticle.title;
        cell.subtitleLabel.text = currentArticle.subtitle;
        [cell.thumbnailImageView setImage:currentArticle.thumbnail];
        return cell;
    }
    else {
        static NSString *CellIdentifier = @"CategoryCell";
        
        CategoriesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        [cell.categoryImageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"category%d.jpeg",indexPath.row]]];
        cell.nameLabel.layer.shadowColor = [[UIColor blackColor] CGColor];
        cell.nameLabel.layer.shadowOffset = CGSizeMake(0.0f, 1.0f);
        cell.nameLabel.layer.shadowOpacity = 1.0f;
        cell.nameLabel.layer.shadowRadius = 1.0f;
        cell.nameLabel.text = articlesData.categoriesArray[indexPath.row];

        return cell;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ArticleViewController* destinationController = segue.destinationViewController;
    destinationController.selectedArticle = (Article*) sender;
}


- (void)dealloc {
    [super dealloc];
}
@end
