//
//  WuJiGalleryShowViewController.m
//  此页面为测试页面
//
//  Created by 中青益信 on 2021/9/29.
//

#import "WuJiGalleryShowViewController.h"
#import "WuJiGalleryBaseObject.h"

@interface WuJiGalleryShowViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong)UICollectionView *collectionView;

@end

@implementation WuJiGalleryShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemGroupedBackgroundColor];
    self.collectionView.hidden = NO;
    // Do any additional setup after loading the view.
}

- (UICollectionView*)collectionView{
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        // 设置item的行间距和列间距
        layout.minimumInteritemSpacing = 10;
        layout.minimumLineSpacing = 10;
        // 设置item的大小
        CGFloat itemW = (self.view.frame.size.width - 45)/4;
        layout.itemSize = CGSizeMake(itemW, itemW);
        // 设置每个分区的 上左下右 的内边距
        layout.sectionInset = UIEdgeInsetsMake(5, 5 ,5, 5);
        // 设置分区的头视图和尾视图 是否始终固定在屏幕上边和下边
        layout.sectionFootersPinToVisibleBounds = YES;
        // 设置滚动条方向
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:layout];
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsVerticalScrollIndicator = NO;   //是否显示滚动条
        _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.scrollEnabled = YES;  //滚动使能
         //3、添加到控制器的view
        [self.view addSubview:_collectionView];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"textCell"];
    }
    return _collectionView;
}


#pragma mark -collectionview 数据源方法
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;   //返回section数
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [WuJiGalleryBaseObject allIconName].count;  //每个section的Item数
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
   UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"textCell" forIndexPath:indexPath];
    for (UIView *subview in cell.subviews) {
        [subview removeFromSuperview];
    }
    CGFloat itemW = (self.view.frame.size.width - 45)/4;
    NSString *name = [WuJiGalleryBaseObject allIconName][indexPath.item];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 20, itemW-60, itemW-60)];
    imageView.image = [WuJiGalleryBaseObject WuJiGallery:name];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, itemW-30, itemW, 20)];
    label.text = name;
    label.font = [UIFont systemFontOfSize:12];
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    cell.backgroundColor = [UIColor whiteColor];
    [cell addSubview:imageView];
    [cell addSubview:label];
    return cell;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
