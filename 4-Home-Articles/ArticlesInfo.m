//
//  ArticlesInfo.m
//  4-Home-Articles
//
//  Created by Alexandar Drajev on 12/3/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "ArticlesInfo.h"

@implementation ArticlesInfo

-(NSString *) genRandStringLength: (int) len {
    NSString *letters = @"abcde fghij klmno pqrst uvwxy zABCD EFGHI JKLMN OPQRS TUVWX YZ";
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    for (int i=0; i<len; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
    }
    return randomString;
}

-(id) init {
    if (self = [super init]) {
        _categoriesArray = @[@"News", @"Crime", @"Sport", @"Lifestyle", @"Health"];
        [_categoriesArray retain];
        _articlesArray = [[NSMutableArray arrayWithCapacity:5] retain];
        for (int i = 0; i < 5; i++) {
            NSMutableArray* currentCategory = [NSMutableArray array];
            for (int j = 0; j < 8; j++) {
                Article* currentArticle = [[Article alloc] initWithTitle:[self genRandStringLength:10] subtitle:[self genRandStringLength:8] andThumbnail:[UIImage imageNamed:@"defaultImage.png"]];
                [currentCategory addObject:currentArticle];
                [currentArticle release];
            }
            [_articlesArray addObject:currentCategory];
        }
    }
    return self;
}

+(id) sharedArticlesInfo {
    static ArticlesInfo *sharedArticlesInfo = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedArticlesInfo = [[ArticlesInfo alloc] init];
    });
    return sharedArticlesInfo;
}

-(void) dealloc {
    [_categoriesArray release];
    [_articlesArray release];
    [super dealloc];
}

@end
