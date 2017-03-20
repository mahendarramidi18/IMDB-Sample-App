//
//  FPCollectionVC.m
//  FinalProject
//
//  Created by remotetiger_user on 3/16/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//


#import "FPCollectionVC.h"
#import "FBCollectionViewCell.h"

@interface FPCollectionVC () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;

@end

@implementation FPCollectionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self registerCustomCollectionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)registerCustomCollectionView {
    //    [self addHeaderView];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"FBCollectionViewCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"FBCollectionViewCell"];
}
#pragma mark - UICollectionViewDatasource Methods

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 49;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    FBCollectionViewCell *cell = nil;
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FBCollectionViewCell" forIndexPath:indexPath];
    
    UIImage *image = nil;
    NSString *name = nil;
    
    if (indexPath.row % 2) {
        image = [UIImage imageNamed:@"Movie2"];
        name = @"Comedy";
    }
    else if (indexPath.row % 3) {
        image = [UIImage imageNamed:@"Movie6"];
        name = @"Action";
        
    } else {
        image = [UIImage imageNamed:@"Movie5"];
        
        name = @"Drama";
    }
    cell.dummyImage.image = image;
    cell.nameLabel.text = name;
    
    return cell;
}


#pragma mark - UICollectionViewDelegate methods..

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0.0;
}

- (CGSize)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row % 3){
        return CGSizeMake((self.view.frame.size.width)/2, 100);
    }
    else {
        return CGSizeMake(self.view.frame.size.width, 200);
        
    }
    
}

#pragma mark collection view cell paddings
- (UIEdgeInsets)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 0, 0, 0); // top, left, bottom, right
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [self moveToDetailScreen];
}

- (void)moveToDetailScreen {
    
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
