//
//  BHBlockTable2.m
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBlockTable2.h"
#import "BHBlockTableState.h"

@interface BHBlockTable2 ()

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) BHBlockTableState *info;
@end

@implementation BHBlockTable2

+ (BHBlockTable2*)blockTableWithTableView:(UICollectionView*)tableView {
    return [[BHBlockTable2 alloc] initWithTableView:tableView andDataAdapter:nil];
}

+ (BHBlockTable2*)blockTableWithTableView:(UICollectionView*)tableView andDataAdapter:(BHBlockTable2AdapterBase*)dataAdapter {
    return [[BHBlockTable2 alloc] initWithTableView:tableView andDataAdapter:dataAdapter];
}

- (instancetype)initWithTableView:(UICollectionView*)collectionView1 andDataAdapter:(BHBlockTable2AdapterBase*)dataAdapter1 {
    
    self = [super init];
    
    if (self) {
        self.collectionView = collectionView1;
        self.collectionView.delegate = self;
        self.collectionView.dataSource = self;
        
        self.dataAdapter = dataAdapter1;
        
        self.info = [[BHBlockTableState alloc] init];
    }
    
    return self;
}

- (void)setDataAdapter:(BHBlockTable2AdapterBase *)dataAdapter {

    __weak BHBlockTable2 *wSelf = self;
    
    _dataAdapter = dataAdapter;
    
    _dataAdapter.internalRefreshData=^{
        [wSelf.collectionView reloadData];
    };
    
    _dataAdapter.infoBlock=^BHBlockTableState*{
        return wSelf.info;
    };
}

- (void)refresh {
    [self.collectionView reloadData];
}

- (void)manuallyRegisterNibForCellIdentifier:(NSString*)cellIdentifier {
    
    UINib *nib = [UINib nibWithNibName:cellIdentifier bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:cellIdentifier];
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = [self.dataAdapter adapterCellIdentifierForIndexPath:indexPath];
    
    id cell = nil;
    
    if (cellIdentifier != nil) {
        cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    }
    else {
        NSAssert(0, @"YOU MUST SET THE CELL NAME");
    }

    [self.dataAdapter adapterConfigureCell:cell forIndexPath:indexPath];

    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSInteger numberOfRowsInSection = [self.dataAdapter adapterNumberOfRowsInSection:section];
    return numberOfRowsInSection;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    NSInteger numberOfSections = [self.dataAdapter adapterNumberOfSections];
    return numberOfSections;
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self.dataAdapter adapterDidDeselectRowAtIndexPath:indexPath];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self.dataAdapter adapterDidSelectRowAtIndexPath:indexPath];
}

@end
