//
//  BHBlockTable2.h
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BHBlockTable2AdapterBase.h"

@interface BHBlockTable2 : NSObject<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout> {
    
}

@property (strong, nonatomic, readonly) UICollectionView *collectionView;
@property (strong, nonatomic) BHBlockTable2AdapterBase *dataAdapter;
@property (strong, nonatomic, readonly) BHBlockTableState *info;

+ (BHBlockTable2*)blockTableWithTableView:(UICollectionView*)tableView;
+ (BHBlockTable2*)blockTableWithTableView:(UICollectionView*)tableView andDataAdapter:(BHBlockTable2AdapterBase*)dataAdapter;

- (void)manuallyRegisterNibForCellIdentifier:(NSString*)cellIdentifier;

@end
