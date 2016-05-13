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
@property (nonatomic, strong)   UILabel *               labDeviceActiveNum;
@property (nonatomic, strong)   UILabel *               labDeviceActiveNumTitle;

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
    [self addSubview:self.labDeviceActiveNum];
    [self.labDeviceActiveNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.labUpdateTime.mas_bottom).with.offset(10);
        make.left.mas_equalTo(self.mas_left).with.offset(20);
        make.width.mas_equalTo(self.mas_width).multipliedBy(0.2);
        make.height.mas_equalTo(self.mas_height).multipliedBy(0.2);
    }];
    [self addSubview:self.labDeviceActiveNumTitle];
    [self.labDeviceActiveNumTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.labDeviceActiveNum.mas_bottom).with.offset(5);
        make.left.mas_equalTo(self.labDeviceActiveNum.mas_left);
        make.width.mas_equalTo(self.labDeviceActiveNum.mas_width);
        make.height.mas_equalTo(self.labDeviceActiveNum.mas_height);
    }];
    
}

-(UILabel *)labUpdateTime
{
    if (!_labUpdateTime) {
        _labUpdateTime = [[UILabel alloc] init];
        _labUpdateTime.text = @"数据刷新频率：一分钟";
        _labUpdateTime.textColor = [UIColor grayColor];
    }
    return _labUpdateTime;
}
-(UILabel *)labDeviceActiveNum
{
    if (!_labDeviceActiveNum) {
        _labDeviceActiveNum = [[UILabel alloc] init];
        _labDeviceActiveNum.text = @"220000";
        _labDeviceActiveNum.textColor =[UIColor blueColor];
    }
    return _labDeviceActiveNum;
}
-(UILabel *)labDeviceActiveNumTitle
{
    
    if (!_labDeviceActiveNumTitle) {
        _labDeviceActiveNumTitle = [[UILabel alloc]init];
        _labDeviceActiveNumTitle.text = @"设备激活";
        _labDeviceActiveNumTitle.textColor= [UIColor blackColor];
    }
    return _labDeviceActiveNumTitle;
}

@end
