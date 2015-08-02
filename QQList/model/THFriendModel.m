//
//  THFriendModel.m
//  QQList
//
//  Created by 李李贤军 on 15/7/10.
//  Copyright (c) 2015年 L. All rights reserved.
//

#import "THFriendModel.h"

@implementation THFriendModel
-(instancetype)initWithDic:(NSDictionary *)dict
{
    if (self == [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype)friendWithDict:(NSDictionary*)dict;
{
    return [[self alloc] initWithDic:dict];

}
@end
