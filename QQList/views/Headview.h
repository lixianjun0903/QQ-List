//
//  Headview.h
//  QQList
//
//  Created by 李李贤军 on 15/7/13.
//  Copyright (c) 2015年 L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "THGroupModel.h"
@protocol HeaderVeiwDelegate<NSObject>
@optional
-(void)clickView;
@end
@interface Headview : UITableViewHeaderFooterView
@property(nonatomic,assign)id <HeaderVeiwDelegate>delegate;
@property(nonatomic,strong)THGroupModel * groupModel;
+(instancetype)headerView:(UITableView*)tableView;
@end
