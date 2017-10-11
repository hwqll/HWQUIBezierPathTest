//
//  HWQBzeierPathView.m
//  UIBezierPathTest
//
//  Created by 黄伟强 on 2017/10/11.
//  Copyright © 2017年 hwq. All rights reserved.
//

#import "HWQBzeierPathView.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation HWQBzeierPathView
//重绘
- (void)drawRect:(CGRect)rect {
    
    //1.矩形
    [self drawMyRect];
    //2.圆
    [self drawCir];
    //3.椭圆
    [self drawOval];
    //4.多边形
    [self drawMutiLine];
    //5.弧线
    [self drawArc];
    
}
- (void)drawMyRect {
    //第一种方法。
    [[UIColor redColor]set];//设置画笔颜色
   // UIRectFill(CGRectMake(ScreenWidth * 0.1, ScreenHeight * 0.1, 50, 50));
    //第二种方法。
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(ScreenWidth * 0.1, ScreenHeight * 0.1, 60, 50)];
    path.lineWidth = 5.0;
    path.lineJoinStyle = kCGLineCapRound;//连接点设置
    path.lineCapStyle = kCGLineCapSquare; //拐角处设置
    [path stroke];//开始渲染
}
- (void)drawCir {
 
    [[UIColor redColor]set];//设置画笔颜色
    //正方形的内切圆：长宽一样
   // UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(ScreenWidth * 0.3, ScreenHeight * 0.1, 60, 60)];
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(ScreenWidth * 0.3, ScreenHeight * 0.3) radius:50 startAngle:0 endAngle:2*M_PI clockwise:YES];
    path.lineWidth = 5.0;
    path.lineJoinStyle = kCGLineCapRound;//连接点设置
    path.lineCapStyle = kCGLineCapSquare; //拐角处设置
    [path stroke];//开始渲染

}
- (void)drawOval {
    [[UIColor redColor]set];//设置画笔颜色
    //正方形的内切圆：长宽一样
     UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(ScreenWidth * 0.5, ScreenHeight * 0.1, 60, 50)];
       path.lineWidth = 5.0;
    path.lineJoinStyle = kCGLineCapRound;//连接点设置
    path.lineCapStyle = kCGLineCapSquare; //拐角处设置
    [path stroke];//开始渲染
    [path fill];
}
- (void) drawMutiLine {
    [[UIColor redColor]set];//设置画笔颜色
    //正方形的内切圆：长宽一样
    UIBezierPath *path =[UIBezierPath bezierPath];
    path.lineWidth = 5.0;
    path.lineJoinStyle = kCGLineCapRound;//连接点设置
    path.lineCapStyle = kCGLineCapSquare; //拐角处设置
    
    [path moveToPoint:CGPointMake(50, 100)];
    [path addLineToPoint:CGPointMake(90, 150)];
     [path addLineToPoint:CGPointMake(60, 200)];
     [path addLineToPoint:CGPointMake(30, 250)];
    [path closePath];
    [path stroke];//开始渲染
    
}
- (void)drawArc {
    [[UIColor redColor]set];//设置画笔颜色
   
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(ScreenWidth /2, ScreenHeight /2) radius:90 startAngle:0 endAngle:M_PI * 235 / 180.0 clockwise:YES];
    path.lineWidth = 5.0;
    path.lineJoinStyle = kCGLineCapRound;//连接点设置
    path.lineCapStyle = kCGLineCapSquare; //拐角处设置
    [path stroke];//开始渲染
}
@end
