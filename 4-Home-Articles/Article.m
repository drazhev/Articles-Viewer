//
//  Article.m
//  4-Home-Articles
//
//  Created by Alexandar Drajev on 12/3/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "Article.h"

@implementation Article

// default initializer
-(id) init {
    return [self initWithTitle:@"" subtitle:@"" andThumbnail:[[UIImage new] autorelease]];
}

// designated initializer
-(id) initWithTitle: (NSString*) title subtitle: (NSString*) subtitle andThumbnail: (UIImage*) thumbnail {
    if (self = [super init]) {
        _title = [title copy];
        _subtitle = [subtitle copy];
        _thumbnail = [thumbnail copy];
    }
    return self;
}

-(void) dealloc {
    [_title release];
    [_subtitle release];
    [_thumbnail release];
    [super dealloc];
}


@end
