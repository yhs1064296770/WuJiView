//
//  WuJiImageItem.m
//  demo
//
//  Created by 中青益信 on 2021/8/12.
//

#import "WuJiImageItem.h"

@interface WuJiImageItem()<UIGestureRecognizerDelegate>

@property (nonatomic,strong)UIImageView *imageView;

@end

@implementation WuJiImageItem


- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect defultFame = CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.width/3);
        self.frame = defultFame;
        self.imageView = [[UIImageView alloc]init];
        self.imageView.frame = CGRectMake(UIScreen.mainScreen.bounds.size.width/3, 0, UIScreen.mainScreen.bounds.size.width/3, UIScreen.mainScreen.bounds.size.width/3);
        [self addSubview:self.imageView];
        self.imageView.layer.cornerRadius = UIScreen.mainScreen.bounds.size.width/6;
        self.imageView.clipsToBounds = YES;
        UITapGestureRecognizer *singleFingerOne = [[UITapGestureRecognizer alloc] initWithTarget:self
        action:@selector(handleSingleFingerEvent:)];
        singleFingerOne.numberOfTouchesRequired = 1;
        singleFingerOne.numberOfTapsRequired = 1;
        singleFingerOne.delegate = self;
        [self.imageView addGestureRecognizer:singleFingerOne];
    }
    return self;
}

- (void)handleSingleFingerEvent:(UITapGestureRecognizer *)tap{
    
}

- (void)setParams:(NSDictionary *)params{
    NSInteger height = [params[@"height"] intValue];
    CGRect myFrame = self.frame;
    myFrame.size.height = myFrame.size.height + height*2;
    CGRect imageFram = self.imageView.frame;
    imageFram.origin.y = height;
    self.imageView.frame = imageFram;
    NSString* urlImage = params[@"imageUrl"];
    self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:urlImage]]];
}

@end
