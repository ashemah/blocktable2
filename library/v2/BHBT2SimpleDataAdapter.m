//
//  BHBlockTable2SimpleDataSource.m
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBT2SimpleDataAdapter.h"

@implementation BHBT2SimpleDataAdapter

+ (BHBT2SimpleDataAdapter*)adapter {
    return [[BHBT2SimpleDataAdapter alloc] init];
}

- (NSInteger)adapterNumberOfRowsInSection:(NSInteger)section {
    return self.numberOfRowsInSection ? self.numberOfRowsInSection(self.state) : 0;
}

- (NSInteger)adapterNumberOfSections {
    return self.numberOfSections ? self.numberOfSections(self.state) : 0;
}

- (NSString*)adapterCellIdentifierForIndexPath:(NSIndexPath*)indexPath {
    return self.cellIdentifierForIndexPath ? self.cellIdentifierForIndexPath(self.state) : nil;
}

- (void)adapterDidScrollToEndOfTable {
    
}

- (void)adapterWillDisplayCell:(UICollectionViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {

    if (self.willDisplayCellForRow) {
        [self setupInfoForCell:cell andIndexPath:indexPath];
        self.willDisplayCellForRow(self.state);
    }
}

- (void)adapterConfigureCell:(UICollectionViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {

    if (self.configureCellForRow) {
        [self setupInfoForCell:cell andIndexPath:indexPath];
        self.configureCellForRow(self.state);
    }
}

- (void)adapterDidSelectRowAtIndexPath:(NSIndexPath*)indexPath {
    
    if (self.didSelectRow) {
        [self setupInfoForIndexPath:indexPath];
        self.didSelectRow(self.state);
    }
}

- (void)adapterDidDeselectRowAtIndexPath:(NSIndexPath*)indexPath {
    
    if (self.didDeselectRow) {
        [self setupInfoForIndexPath:indexPath];
        self.didDeselectRow(self.state);
    }
}

- (void)adapterConfigureView:(UIView*)view forSection:(NSInteger)section {
    
    if (self.configureCellForRow) {
        [self setupInfoForView:view andSection:section];
        self.configureViewForSection(self.state);
    }
}

@end
