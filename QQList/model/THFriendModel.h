//
//  THFriendModel.h
//  QQList
//
//  Created by 李李贤军 on 15/7/10.
//  Copyright (c) 2015年 L. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THFriendModel : NSObject
@property(nonatomic,copy) NSString * icon;
@property(nonatomic,copy)NSString * name;
@property(nonatomic,copy)NSString * intro;
@property(nonatomic,assign)BOOL isVip;
-(instancetype)initWithDic:(NSDictionary *)dict;
+(instancetype)friendWithDict:(NSDictionary*)dict;
@end
