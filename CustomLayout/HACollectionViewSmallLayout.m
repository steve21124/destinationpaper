//
//  HACollectionViewSmallLayout.m
//  Paper
//
//  Created by Heberti Almeida on 04/02/14.
//  Copyright (c) 2014 Heberti Almeida. All rights reserved.
//

#import "HACollectionViewSmallLayout.h"
@implementation HACollectionViewSmallLayout

- (id)init
{
    if (!(self = [super init])) return nil;
    
    self.itemSize = CGSizeMake(142, 254);
    CGRect appFrame = [[UIScreen mainScreen] applicationFrame];
    int insetHeight = appFrame.size.height - 254 - 50;
    self.sectionInset = UIEdgeInsetsMake(insetHeight, 2, 0, 2);
    
    self.minimumInteritemSpacing = 10.0f;
    self.minimumLineSpacing = 2.0f;
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    return self;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)oldBounds
{
    return NO;
}

@end
