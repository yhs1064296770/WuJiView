//
//  WuJiGalleryLibrayObject.m
//  demo
//
//  Created by 中青益信 on 2021/10/14.
//

#import "WuJiGalleryALibrayObject.h"

@implementation WuJiGalleryALibrayObject

- (UIImage*)icon_error{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(x, y, width, heigh)];
    [self setBezierPathStyle:path1];
    [path1 stroke];
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x+ width*0.3,y + heigh*0.3)];
    [path addLineToPoint:CGPointMake(x+ width*0.7, y + heigh*0.7)];
    [path stroke];
    
    UIBezierPath *path2 = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path2];
    [path2 moveToPoint:CGPointMake(x+ width*0.3, y + heigh*0.7)];
    [path2 addLineToPoint:CGPointMake(x+ width*0.7, y + heigh*0.3)];
    [path2 stroke];
    
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_right{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(x, y, width, heigh)];
    [self setBezierPathStyle:path1];
    [path1 stroke];
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x+ width*0.3,y + heigh*0.5)];
    [path addLineToPoint:CGPointMake(x+ width*0.45, y + heigh*0.75)];
    [path addLineToPoint:CGPointMake(x+ width*0.7, y + heigh*0.25)];
    [path stroke];
    
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_subtract{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(x, y, width, heigh)];
    [self setBezierPathStyle:path1];
    [path1 stroke];
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x+ width*0.3,y + heigh*0.5)];
    [path addLineToPoint:CGPointMake(x+ width*0.7, y + heigh*0.5)];
    [path stroke];
    
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_add{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    UIBezierPath *path1 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(x, y, width, heigh)];
    UIBezierPath *path2 = [[UIBezierPath alloc] init];
    
    [self setBezierPathStyle:path];
    [self setBezierPathStyle:path1];
    [self setBezierPathStyle:path2];
    
    [path moveToPoint:CGPointMake(x+ width*0.3,y + heigh*0.5)];
    [path addLineToPoint:CGPointMake(x+ width*0.7, y + heigh*0.5)];
    [path stroke];
    [path1 stroke];
    [path2 moveToPoint:CGPointMake(x+ width*0.5,y + heigh*0.3)];
    [path2 addLineToPoint:CGPointMake(x+ width*0.5, y + heigh*0.7)];
    [path2 stroke];
    
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_area{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(x+0.5*width, y+0.4*heigh) radius:0.4*width startAngle:3.1415926 endAngle:0 clockwise:YES];
    [self setBezierPathStyle:path1];
    [path1 stroke];
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x+width*0.1,y + heigh*0.4)];
    [path addLineToPoint:CGPointMake(x+width*0.5,y + heigh)];
    [path addLineToPoint:CGPointMake(x + width*0.9, y + heigh*0.4)];
    [path stroke];
    
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(x+width*0.4, y+heigh*0.3, width*0.2, 0.2*heigh) cornerRadius:0.1*width];
    [self setBezierPathStyle:path2];
    [path2 stroke];
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_clock{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(x+width*0.1, y+heigh*0.2, width*0.8, 0.8*heigh) cornerRadius:0.4*width];
    [self setBezierPathStyle:path1];
    [path1 stroke];
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x+width*0.5,y + heigh*0.4)];
    [path addLineToPoint:CGPointMake(x+width*0.5,y + heigh*0.6)];
    [path addLineToPoint:CGPointMake(x + width*0.7, y + heigh*0.8)];
    [path stroke];
    
    UIBezierPath *path2 = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path2];
    [path2 moveToPoint:CGPointMake(x,y + heigh*0.3)];
    [path2 addQuadCurveToPoint:CGPointMake(x + width*0.3, y+heigh*0.1) controlPoint:CGPointMake(x, y)];
    [path2 stroke];
    
    UIBezierPath *path3 = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path3];
    [path3 moveToPoint:CGPointMake(x+width*0.7,y+heigh*0.1)];
    [path3 addQuadCurveToPoint:CGPointMake(x + width, y+heigh*0.3) controlPoint:CGPointMake(x + width, y)];
    [path3 stroke];
    
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_key{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(x, y+heigh*0.4, width, 0.6*heigh) cornerRadius:0.1*width];
    [self setBezierPathStyle:path1];
    [path1 stroke];
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x+width*0.2,y + heigh*0.4)];
    [path addLineToPoint:CGPointMake(x+width*0.2,y + heigh*0.2)];
    [path addQuadCurveToPoint:CGPointMake(x + width*0.8, y + heigh*0.2) controlPoint:CGPointMake(x + width*0.5, 0)];
    [path addLineToPoint:CGPointMake(x + width*0.8, y + heigh*0.4)];
    [path stroke];
    UIBezierPath *path2 = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path2];
    [path2 moveToPoint:CGPointMake(x+width*0.5,y + heigh*0.6)];
    [path2 addLineToPoint:CGPointMake(x+width*0.5,y + heigh*0.8)];
    [path2 stroke];
    
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_people{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(x+ width*0.25, y, width*0.5, heigh*0.5)];
    [self setBezierPathStyle:path1];
    [path1 stroke];
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x,y + heigh)];
    [path addLineToPoint:CGPointMake(x, y + heigh*0.8)];
    [path addQuadCurveToPoint:CGPointMake(x + width, y + heigh*0.8) controlPoint:CGPointMake(x + width*0.5, y + heigh*0.5)];
    [path addLineToPoint:CGPointMake(x + width, y + heigh)];
    [path closePath];
    [path stroke];
    
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_up{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x,y + heigh*0.75)];
    [path addLineToPoint:CGPointMake(x+ width*0.5, y + heigh*0.25)];
    [path addLineToPoint:CGPointMake(x+width, y+heigh*0.75)];
    [path stroke];
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_down{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x,y + heigh*0.25)];
    [path addLineToPoint:CGPointMake(x+ width*0.5, y + heigh*0.75)];
    [path addLineToPoint:CGPointMake(x+width, y+heigh*0.25)];
    [path stroke];
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_l{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x + width*0.75 ,y)];
    [path addLineToPoint:CGPointMake(x + width*0.25, y + heigh*0.5)];
    [path addLineToPoint:CGPointMake(x + width*0.75, y + heigh)];
    [path stroke];
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

- (UIImage*)icon_r{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGFloat x = self.size.width*0.1;
    CGFloat y = self.size.height*0.1;
    CGFloat width = self.size.width*0.8;
    CGFloat heigh = self.size.height*0.8;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [self setBezierPathStyle:path];
    [path moveToPoint:CGPointMake(x + width*0.25 ,y)];
    [path addLineToPoint:CGPointMake(x + width*0.75, y + heigh*0.5)];
    [path addLineToPoint:CGPointMake(x + width*0.25, y + heigh)];
    [path stroke];
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return im;
}

@end
