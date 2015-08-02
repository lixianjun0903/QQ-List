//
//  Headview.m
//  QQList
//
//  Created by 李李贤军 on 15/7/13.
//  Copyright (c) 2015年 L. All rights reserved.
//

#import "Headview.h"
#import "THGroupModel.h"
@implementation Headview
{
    
    
    UIButton * _arroewBtn;
    UILabel * _label;
}



+(instancetype)headerView:(UITableView*)tableView
{
    static NSString * identifier = @"header";
    Headview * header = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!header) {
        header =[[Headview alloc] initWithReuseIdentifier:identifier];
    }
    return header;
    
}
-(instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{


    if (self = [super init]) {
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateHighlighted];
        [button setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        button.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        button.imageView.contentMode = UIViewContentModeCenter;[button addTarget:self action:@selector(buttonCilck) forControlEvents:UIControlEventTouchUpInside];
        _arroewBtn = button;
        [self addSubview:_arroewBtn];
        //创建albe 显示当前在线人数
        UILabel * LalbeRight = [[UILabel alloc]init];
        LalbeRight.textAlignment = NSTextAlignmentCenter;
        _label = LalbeRight;
        [self addSubview:_label];
    }
    return self;
}

-(void)buttonCilck
{
    self.groupModel.isOpen = !self.groupModel.isOpen;
    if ([self.delegate respondsToSelector:@selector(clickView)]) {
        [self.delegate clickView];
    }

}

-(void)didMoveToSuperview
{
    _arroewBtn.imageView.transform = self.groupModel.isOpen?CGAffineTransformMakeRotation(M_PI_2):CGAffineTransformMakeRotation(0);
    
}
#pragma mark -buttonAction

-(void)layoutSubviews
{

    [super layoutSubviews];
    _arroewBtn.frame = self.bounds;
    _label.frame = CGRectMake(self.frame.size.width - 70, 0, 60, self.frame.size.height);
}

-(void)setGroupModel:(THGroupModel *)groupModel
{
    _groupModel = groupModel;
    [_arroewBtn setTitle:groupModel.name forState:UIControlStateNormal];
    _label.text = [NSString stringWithFormat:@"%@/%lu",_groupModel.online,(unsigned long)_groupModel.friends.count];
}
@end
