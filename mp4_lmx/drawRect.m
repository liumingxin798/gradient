//
//  drawRect.m
//  mp4_lmx
//
//  Created by 刘明鑫 on 15/12/6.
//  Copyright © 2015年 刘明鑫. All rights reserved.
//

#import "drawRect.h"

@implementation drawRect

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)drawRect:(CGRect)rect {
    
//    第一种渐变色方式
//    CAGradientLayer *gradient = [CAGradientLayer layer];
//    gradient.frame = rect;
//    gradient.colors = [NSArray arrayWithObjects:(id)[UIColor redColor].CGColor,
//                       (id)[UIColor greenColor].CGColor,nil];
//    [self.layer insertSublayer:gradient atIndex:0];
//
//    第二种渐变色方式
     //绘制颜色渐变
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 创建色彩空间对象
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    // 创建起点颜色
    CGColorRef beginColor = CGColorCreate(colorSpaceRef, (CGFloat[]){0, 1, 0, 0.6});
    // 创建终点颜色
    CGColorRef endColor = CGColorCreate(colorSpaceRef, (CGFloat[]){0, 0, 0, 0});
    // 创建颜色数组
    CFArrayRef colorArray = CFArrayCreate(kCFAllocatorDefault, (const void*[]){beginColor, endColor}, 2, nil);
    // 创建渐变对象
    CGGradientRef gradientRef = CGGradientCreateWithColors(colorSpaceRef, colorArray, (CGFloat[]){
        0.0f,	   // 对应起点颜色位置
        1.0f		// 对应终点颜色位置
    });
    // 释放颜色数组
    CFRelease(colorArray);
    // 释放起点和终点颜色
    CGColorRelease(beginColor);
    CGColorRelease(endColor);
    // 释放色彩空间
    CGColorSpaceRelease(colorSpaceRef);
    CGContextDrawLinearGradient(context, gradientRef, CGPointMake(50, 0), CGPointMake(50, 50), 0);
    // 释放渐变对象
    CGGradientRelease(gradientRef);
    
}
@end
