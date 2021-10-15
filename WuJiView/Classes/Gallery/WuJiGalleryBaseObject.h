//
//  WuJiGalleryBaseObject.h
//  demo
//
//  Created by 中青益信 on 2021/10/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define GalleryVersion @"1.0"

NS_ASSUME_NONNULL_BEGIN

@interface WuJiGalleryBaseObject : NSObject

//默认(100,100)
@property(nonatomic,assign)CGSize size;

//图片名(对应方法)
@property(nonatomic,strong)NSString *imageName;

//默认黑色
@property(nonatomic,strong)UIColor *color;

//线条宽度(默认4.f)
@property(nonatomic,assign)CGFloat lineWidth;

- (UIImage*)WuJiGalleryImage;

- (UIColor*)WuJiGalleryColor;

+ (UIImage*)WuJiGallery:(NSString*)imageName;

+ (UIImage*)WuJiGalleryColor:(UIColor*)color withName:(NSString*)imageName;

+ (UIImage*)WuJiGallerySize:(CGSize)size withName:(NSString*)imageName;

+ (UIImage*)WuJiGallerySize:(CGSize)size withColor:(UIColor*)color withName:(NSString*)imageName;

+ (UIImage*)WuJiGallerySize:(CGSize)size withColor:(UIColor*)color withLineWidth:(CGFloat)lineWidth withName:(NSString*)imageName;

+ (NSArray*)allIconName;

//子类贝塞尔曲线样式设置
- (void)setBezierPathStyle:(UIBezierPath*)path;

@end

NS_ASSUME_NONNULL_END
