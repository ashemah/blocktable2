//
//  BHBlockTable2DataSource.h
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BHBlockTableState.h"

typedef BHBlockTableState* (^RequestTableViewInfo)();
typedef void (^InternalRefreshData)();

@class UICollectionViewCell;

@interface BHBlockTable2AdapterBase : NSObject

@property (copy, nonatomic) RequestTableViewInfo infoBlock;
@property (copy, nonatomic) InternalRefreshData internalRefreshData;
@property (strong, nonatomic, readonly) BHBlockTableState *state;

- (NSInteger)adapterNumberOfRowsInSection:(NSInteger)section;
- (NSInteger)adapterNumberOfSections;

- (void)adapterDidScrollToEndOfTable;

- (NSString*)adapterCellIdentifierForIndexPath:(NSIndexPath*)indexPath;

- (void)adapterWillDisplayCell:(UICollectionViewCell*)cell forIndexPath:(NSIndexPath*)indexPath;
- (void)adapterConfigureCell:(UICollectionViewCell*)cell forIndexPath:(NSIndexPath*)indexPath;

- (void)adapterDidSelectRowAtIndexPath:(NSIndexPath*)indexPath;
- (void)adapterDidDeselectRowAtIndexPath:(NSIndexPath*)indexPath;

- (void)setupInfoForView:(UIView*)view andSection:(NSInteger)section;
- (void)setupInfoForIndexPath:(NSIndexPath*)indexPath;
- (void)setupInfoForView:(UIView*)view andIndexPath:(NSIndexPath*)indexPath;
- (void)setupInfoForCell:(id)cell andIndexPath:(NSIndexPath*)indexPath;
- (void)setupInfo;
- (void)setupInfoSection:(NSInteger)section;
@end
