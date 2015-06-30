//
//  BHBlockTable2DataSource.m
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBlockTable2DataAdapter.h"
#import <UIKit/UIKit.h>

@implementation BHBlockTable2DataAdapter

- (NSInteger)adapterNumberOfRowsInSection:(NSInteger)section {
    NSAssert(FALSE, @"Not implemented");
    return 0;
}

- (NSInteger)adapterNumberOfSections {
    NSAssert(FALSE, @"Not implemented");
    return 0;
}

- (NSInteger)adapterIndexOfLastSection {
    NSAssert(FALSE, @"Not implemented");
    return 0;
}

- (NSInteger)adapterIndexOfLastRowInSection:(NSInteger)section {
    NSAssert(FALSE, @"Not implemented");
    return 0;
}

- (NSString*)adapterCellIdentifierForIndexPath:(NSIndexPath*)indexPath {
    NSAssert(FALSE, @"Not implemented");
    return nil;
}

- (void)adapterDidScrollToEndOfTable {
    
}

- (void)adapterWillDisplayCell:(UITableViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {
    
}

- (void)adapterConfigureCell:(UITableViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {
    
}

- (void)adapterDidSelectRowAtIndexPath:(NSIndexPath*)indexPath {
    
}

- (void)adapterDidDeselectRowAtIndexPath:(NSIndexPath*)indexPath {
    
}

@end
