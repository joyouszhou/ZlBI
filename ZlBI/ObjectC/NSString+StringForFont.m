//
//  ss.m
//  ZlBI
//
//  Created by zhouhuan on 16/5/10.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import "NSString+StringForFont.h"

@implementation NSString(StringForFont)

+(CGSize)sizeForTitle:(NSString *)title withFont:(UIFont *)font
{
    if (title==nil) {
        title =@"";
    }
    CGRect titleRect = [title boundingRectWithSize:CGSizeMake(FLT_MAX, FLT_MAX)
                                           options:NSStringDrawingUsesLineFragmentOrigin
                                        attributes:@{NSFontAttributeName : font}
                                           context:nil];
    
    return CGSizeMake(titleRect.size.width,
                      titleRect.size.height);
}



@end
