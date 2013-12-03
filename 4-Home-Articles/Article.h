//
//  Article.h
//  4-Home-Articles
//
//  Created by Alexandar Drajev on 12/3/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Article : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* subtitle;
@property (nonatomic, retain) UIImage* thumbnail;


// designated initializer
-(id) initWithTitle: (NSString*) title subtitle: (NSString*) subtitle andThumbnail: (UIImage*) thumbnail;

@end
