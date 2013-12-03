//
//  ArticlesInfo.h
//  4-Home-Articles
//
//  Created by Alexandar Drajev on 12/3/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

@interface ArticlesInfo : NSObject

@property (nonatomic, retain) NSMutableArray* articlesArray;
@property (nonatomic, retain) NSArray* categoriesArray;

+(id) sharedArticlesInfo;

@end
