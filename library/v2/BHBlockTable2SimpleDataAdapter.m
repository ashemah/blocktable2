//
//  BHBlockTable2SimpleDataSource.m
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBlockTable2SimpleDataAdapter.h"

@implementation BHBlockTable2SimpleDataAdapter

- (NSInteger)adapterNumberOfRowsInSection:(NSInteger)section {
    return self.numberOfRowsInSection ? self.numberOfRowsInSection(self.info) : 0;
}

- (NSInteger)adapterNumberOfSections {
    return self.numberOfSections ? self.numberOfSections(self.info) : 0;
}

- (NSString*)adapterCellIdentifierForIndexPath:(NSIndexPath*)indexPath {
    return self.cellIdentifierForIndexPath ? self.cellIdentifierForIndexPath(self.info) : nil;
}

- (void)adapterDidScrollToEndOfTable {
    
    if (self.didScrollToEndOfTable) {
        self.didScrollToEndOfTable(self.info);
    }
}

- (void)adapterWillDisplayCell:(UITableViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {

    if (self.willDisplayCellForRow) {
        self.willDisplayCellForRow(self.info);
    }
}

- (void)adapterConfigureCell:(UITableViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {

    if (self.configureCellForRow) {
        self.configureCellForRow(self.info);
    }
}

- (void)adapterDidSelectRowAtIndexPath:(NSIndexPath*)indexPath {
    
    if (self.didSelectRow) {
        self.didSelectRow(self.info);
    }
}

- (void)adapterDidDeselectRowAtIndexPath:(NSIndexPath*)indexPath {
    
    if (self.didDeselectRow) {
        self.didDeselectRow(self.info);
    }
}

@end
