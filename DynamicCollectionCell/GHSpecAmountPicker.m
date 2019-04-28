//
//  GHSpecAmountPicker.m
//  DynamicCollectionCell
//
//  Created by LinChe-Ching on 2019/4/27.
//  Copyright © 2019 Che-ching Lin. All rights reserved.
//

#import "GHSpecAmountPicker.h"
#import "GHSpecItemCell.h"
#import "UICollectionViewLeftAlignedLayout.h"
@interface GHSpecAmountPicker () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateLeftAlignedLayout>
@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;
@property (nonatomic, weak) IBOutlet UICollectionViewLeftAlignedLayout *layout;
@property (nonatomic, strong) NSArray *array;
@end

@implementation GHSpecAmountPicker

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [(UICollectionViewFlowLayout*)self.layout setEstimatedItemSize:UICollectionViewFlowLayoutAutomaticSize];
    [(UICollectionViewFlowLayout*)self.layout setMinimumInteritemSpacing:10];
    _array = @[@"M", @"L", @"XL", @"BO1234", @"BO4567", @"BO6789", @"TESTTESTTESTTESTTEST", @"BO6789(TestTest)",@"BO6789(TestTest)", @"TESTTESTTESTTESTTEST", @"BO6789(TestTest)",@"BO6789(TestTest)", @"TESTTESTTESTTESTTEST", @"BO6789(TestTest)",@"BO6789(TestTest)", @"M", @"L", @"XL"];
}

- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    GHSpecItemCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"GHSpecItemCell" forIndexPath:indexPath];
    cell.text = _array[indexPath.item];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _array.count;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%s - %@", __FUNCTION__, _array[indexPath.item]);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 10.0;
}
@end
