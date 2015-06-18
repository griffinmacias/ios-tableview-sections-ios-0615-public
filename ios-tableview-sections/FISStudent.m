//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Mason Macias on 6/18/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent
-(instancetype)initWithName:(NSString *)name FavoriteThings:(NSArray *)favoriteThings
{
    self = [super init];
    
    if (self) {
        _name = name;
        _favoriteThings = favoriteThings;
    }

    return self;
}

-(instancetype)init
{
    return [self initWithName:@"" FavoriteThings:@[]];
}
@end
