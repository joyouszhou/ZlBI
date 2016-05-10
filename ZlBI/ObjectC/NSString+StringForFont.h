//
//  ss.h
//  ZlBI
//
//  Created by zhouhuan on 16/5/10.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(StringForFont)

/**
 *  根据文本及其字体返回所需大小
 *
 *  @param title 文本
 *  @param font  字体
 *
 *  @return 当前占用size
 */
+(CGSize)sizeForTitle:(NSString *)title withFont:(UIFont *)font;

@end
