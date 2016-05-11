//
//  ZlGroupButtonView.h
//  ZlBI
//
//  Created by zhouhuan on 16/5/11.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZlGroupDelegate <NSObject>

-(void)ZlGroupBtnSelecte:(id)tag;

@end


@interface ZlGroupButtonView : UIView

@property (nonatomic, strong)   NSMutableArray          *buttons;
@property (nonatomic, strong)   NSMutableArray          *buttonsTag;
@property (nonatomic, strong)   UIButton                *lastBtn;
@property (nonatomic, assign)   int                     btnCount;
@property (nonatomic, strong)   id<ZlGroupDelegate>     delegate;


-(void)addGroupButton:(UIButton *)btn withtag:(id)tag;


@end
