//
//  THGroupModel.m
//  QQList
//
//  Created by 李李贤军 on 15/7/10.
//  Copyright (c) 2015年 L. All rights reserved.
//

#import "THGroupModel.h"
#import "THFriendModel.h"
@implementation THGroupModel
-(instancetype)initWithDict:(NSDictionary*)dic
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
        NSMutableArray * nsmuArray = [NSMutableArray array];
        for (NSDictionary* dic in self.friends ) {
            THFriendModel * model = [THFriendModel friendWithDict:dic];
            [nsmuArray addObject:model];
            
        }
        self.friends = nsmuArray;
    }
    return self;
}
+(instancetype)GroupWithDict:(NSDictionary*)dict
{
    return [[self init] initWithDict:dict];
}
@end
