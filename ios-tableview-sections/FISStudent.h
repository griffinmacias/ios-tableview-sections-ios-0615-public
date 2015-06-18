//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by Mason Macias on 6/18/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject
@property (nonatomic, strong) NSArray *favoriteThings;
@property (nonatomic, strong) NSString *name;
-(instancetype)initWithName:(NSString *)name FavoriteThings:(NSArray *)favoriteThings;

@end
