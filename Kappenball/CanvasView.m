//
//  CanvasView.m
//  Kappenball
//
//  Created by 武淅 段 on 2016/10/28.
//  Copyright © 2016年 武淅 段. All rights reserved.
//

#import "CanvasView.h"
#import "UIColor+TAToolkit.h"
#import "constant.h"

@implementation CanvasView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGFloat left = 40;
    CGFloat top = 40;
    CGFloat bottom = 120;
    CGFloat b = 70;
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ctx, left, top);
    CGContextAddLineToPoint(ctx, left, SCREEN_HEIGHT-bottom);
    CGContextAddLineToPoint(ctx, 190, SCREEN_HEIGHT-bottom);
    CGContextAddLineToPoint(ctx, 190, SCREEN_HEIGHT-b);
    CGContextAddLineToPoint(ctx, 250, SCREEN_HEIGHT-b);
    CGContextAddLineToPoint(ctx, 250, SCREEN_HEIGHT-bottom);
    CGContextAddLineToPoint(ctx, SCREEN_WIDTH-250, SCREEN_HEIGHT-bottom);
    CGContextAddLineToPoint(ctx, SCREEN_WIDTH-250, SCREEN_HEIGHT-b);
    CGContextAddLineToPoint(ctx, SCREEN_WIDTH-190, SCREEN_HEIGHT-b);
    CGContextAddLineToPoint(ctx, SCREEN_WIDTH-190, SCREEN_HEIGHT-bottom);
    CGContextAddLineToPoint(ctx, SCREEN_WIDTH-left, SCREEN_HEIGHT-bottom);
    CGContextAddLineToPoint(ctx, SCREEN_WIDTH-left, top);
    CGContextSetStrokeColorWithColor(ctx, THEME_COLOR.CGColor);
    CGContextSetLineWidth(ctx, 3);
    CGContextDrawPath(ctx, kCGPathStroke);
    CGContextRelease(ctx);
}


@end
