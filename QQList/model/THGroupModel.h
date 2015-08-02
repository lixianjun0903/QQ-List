//
//  THGroupModel.h
//  QQList
//
//  Created by 李李贤军 on 15/7/10.
//  Copyright (c) 2015年 L. All rights reserved.
//

#import <Foundation/Foundation.h>
@class THFriendModel;
@interface THGroupModel : NSObject
@property(nonatomic,copy)NSString * name;
@property(nonatomic,copy)NSString * online;
@property(nonatomic,strong)NSArray * friends;
@property(nonatomic,strong)THFriendModel * friendModel;
@property(nonatomic,assign)BOOL isOpen;
-(instancetype)initWithDict:(NSDictionary*)dic;
+(instancetype)GroupWithDict:(NSDictionary*)dict;
@end
