//
//  WuJiGalleryBaseObject.m
//  demo
//
//  Created by 中青益信 on 2021/10/14.
//

#import "WuJiGalleryBaseObject.h"
#import <objc/runtime.h>

@implementation WuJiGalleryBaseObject

- (UIImage*)WuJiGalleryImage{
    if (CGSizeEqualToSize(self.size, CGSizeZero)) {
        self.size = CGSizeMake(100, 100);
    }
    if (self.color == nil) {
        self.color = [UIColor blackColor];
    }
    SEL sel = NSSelectorFromString(self.imageName);
    if ([self respondsToSelector:sel]) {
        return (UIImage*)[self performSelector:sel withObject:nil];
    }
    return nil;
}

- (UIColor*)WuJiGalleryColor{
    return nil;
}

+ (UIImage*)WuJiGallery:(NSString*)imageName{
    return [self WuJiGallerySize:CGSizeMake(100, 100) withColor:UIColor.blackColor withName:imageName];
}

+ (UIImage*)WuJiGalleryColor:(UIColor*)color withName:(NSString*)imageName{
    return [self WuJiGallerySize:CGSizeMake(100, 100) withColor:color withName:imageName];
}

+ (UIImage*)WuJiGallerySize:(CGSize)size withName:(NSString*)imageName{
    return [self WuJiGallerySize:size withColor:UIColor.blackColor withName:imageName];
}

+ (UIImage*)WuJiGallerySize:(CGSize)size withColor:(UIColor*)color withName:(NSString*)imageName{
    return [self WuJiGallerySize:size withColor:color withLineWidth:4.f withName:imageName];
}

+ (UIImage*)WuJiGallerySize:(CGSize)size withColor:(UIColor*)color withLineWidth:(CGFloat)lineWidth withName:(NSString*)imageName{
    WuJiGalleryBaseObject *gallery = [self getSubClass:imageName].new;
    gallery.size = size;
    gallery.color = color;
    gallery.imageName = imageName;
    gallery.lineWidth = lineWidth;
    return [gallery WuJiGalleryImage];
}

+ (Class)getSubClass:(NSString*)icon{
    NSArray *arr = [self findSubClass:[WuJiGalleryBaseObject class]];
    for (NSDictionary *dict in arr) {
        for (NSString *name in dict[@"methodlist"]) {
            if ([name isEqualToString:icon]) {
                return NSClassFromString(dict[@"class"]);
            }
        }
    }
    return nil;
}

//获取指定类的子类
+ (NSArray *)findSubClass:(Class)defaultClass{
    NSString *v = [[NSUserDefaults standardUserDefaults] objectForKey:@"GalleryVersion"];
    if ([v isEqualToString:GalleryVersion]) {
        NSArray *list = [[NSUserDefaults standardUserDefaults] objectForKey:@"Gallery"];
        if (list.count>0) {
            return list;
        }
    }else{
        [[NSUserDefaults standardUserDefaults] setObject:GalleryVersion forKey:@"GalleryVersion"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    int count = objc_getClassList(NULL,0);
    NSMutableArray * array = [NSMutableArray array];
    Class *classes = (Class *)malloc(sizeof(Class) * count);
    objc_getClassList(classes, count);
    for (int i = 0; i < count; i++) {
        if (defaultClass == class_getSuperclass(classes[i])) {
            NSMutableDictionary *mutDict = [NSMutableDictionary dictionary];
            mutDict[@"class"] = NSStringFromClass(classes[i]);
            mutDict[@"methodlist"] = [self getMethodlist:classes[i]];
            [array addObject:mutDict];
        }
    }
    free(classes);
    [[NSUserDefaults standardUserDefaults] setObject:array forKey:@"Gallery"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    return array;
}

//获取类中的方法
+ (NSArray*)getMethodlist:(Class)defaultClass{
    NSMutableArray *arr = [NSMutableArray array];
    unsigned int count = 0;
    Method *methodList = class_copyMethodList(defaultClass, &count);
    for (int i = 0; i<count; i++) {
        Method method = methodList[i];
        SEL sel = method_getName(method);
        const char *methodName = sel_getName(sel);
        NSString *methodStr = [[NSString alloc]initWithUTF8String:methodName];
        [arr addObject:methodStr];
    }
    return arr;
}

+ (NSArray*)allIconName{
    NSMutableArray *mutTemp = [NSMutableArray array];
    NSArray *arr = [self findSubClass:[WuJiGalleryBaseObject class]];
    for (NSDictionary *dict in arr) {
        for (NSString *name in dict[@"methodlist"]) {
            [mutTemp addObject:name];
        }
    }
    return mutTemp;
}

- (void)setBezierPathStyle:(UIBezierPath*)path{
    path.lineWidth = self.lineWidth;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.miterLimit = 10.f;
    path.flatness = 10.f;
    path.usesEvenOddFillRule = YES;
    [self.color set];
}

@end
