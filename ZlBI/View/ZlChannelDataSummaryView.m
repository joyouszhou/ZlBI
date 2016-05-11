//
//  ZlChannelDataSummaryView.m
//  ZlBI
//
//  Created by zhouhuan on 16/5/11.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import "ZlChannelDataSummaryView.h"
@interface ZlChannelDataSummaryView()
@property (nonatomic, strong)   UILabel *               labUpdateTime;

@end
@implementation ZlChannelDataSummaryView



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //创建一个图片
    self.backgroundColor = [UIColor whiteColor];
    
    self.layer.borderWidth = 1;
    
    [self addSubview:self.labUpdateTime];
    [self.labUpdateTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.mas_top);
        make.left.mas_equalTo(self.mas_left);
        make.size.mas_equalTo([NSString sizeForTitle:self.labUpdateTime.text withFont:self.labUpdateTime.font]);
    }];
    
    
}

-(UILabel *)labUpdateTime
{
    if (!_labUpdateTime) {
        _labUpdateTime = [[UILabel alloc] init];
        _labUpdateTime.text = @"数据刷新频率：一分钟";
    }
    return _labUpdateTime;
}


@end
