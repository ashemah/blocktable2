//
//  BHBlockTable2DataSource.m
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBlockTable2AdapterBase.h"
#import <UIKit/UIKit.h>

@interface BHBlockTable2AdapterBase ()
- (void)setupInfoForIndexPath:(NSIndexPath*)indexPath;
@property (strong, nonatomic) BHBlockTableState *state;
@end

@implementation BHBlockTable2AdapterBase

- (NSInteger)adapterNumberOfRowsInSection:(NSInteger)section {
    NSAssert(FALSE, @"Not implemented");
    return 0;
}

- (NSInteger)adapterNumberOfSections {
    NSAssert(FALSE, @"Not implemented");
    return 0;
}

- (NSString*)adapterCellIdentifierForIndexPath:(NSIndexPath*)indexPath {
    NSAssert(FALSE, @"Not implemented");
    return nil;
}

- (void)adapterDidScrollToEndOfTable {
}

- (void)adapterWillDisplayCell:(UICollectionViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {
    
}

- (void)adapterConfigureCell:(UICollectionViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {
    
}

- (void)adapterDidSelectRowAtIndexPath:(NSIndexPath*)indexPath {
    
}

- (void)adapterDidDeselectRowAtIndexPath:(NSIndexPath*)indexPath {
    
}

- (void)setupInfo {
    self.state = self.infoBlock();
    
    self.state.indexPath = nil;
    self.state.rowIndex = 0;
    self.state.sectionIndex = 0;
    
    self.state.cell = nil;
    self.state.view = nil;
    self.state.lastTappedIndexPath = nil;
}

- (void)setupInfoForIndexPath:(NSIndexPath*)indexPath {
    [self setupInfo];
    
    self.state.indexPath = indexPath;
    self.state.rowIndex = indexPath.row;
    self.state.sectionIndex = indexPath.section;
}

- (void)setupInfoForCell:(id)cell andIndexPath:(NSIndexPath*)indexPath {
    [self setupInfoForIndexPath:indexPath];
    self.state.cell = cell;
}

- (void)setupInfoForView:(UIView*)view andIndexPath:(NSIndexPath*)indexPath {
    [self setupInfoForIndexPath:indexPath];
    self.state.view = view;
}

- (void)setupInfoSection:(NSInteger)section {
    [self setupInfo];
    self.state.sectionIndex = section;
}

- (void)setupInfoForView:(UIView*)view andSection:(NSInteger)section {
    [self setupInfo];
    
    self.state.sectionIndex = section;
    self.state.view = view;
}

@end
