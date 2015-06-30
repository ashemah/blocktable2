//
//  BHBlockTable2DataSource.h
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHBlockTableInfo.h"

@class UITableViewCell;

@interface BHBlockTable2DataAdapter : NSObject

- (NSInteger)adapterNumberOfRowsInSection:(NSInteger)section;
- (NSInteger)adapterNumberOfSections;

- (NSInteger)adapterIndexOfLastSection;
- (NSInteger)adapterIndexOfLastRowInSection:(NSInteger)section;

- (void)adapterDidScrollToEndOfTable;

- (NSString*)adapterCellIdentifierForIndexPath:(NSIndexPath*)indexPath;

- (void)adapterWillDisplayCell:(UITableViewCell*)cell forIndexPath:(NSIndexPath*)indexPath;
- (void)adapterConfigureCell:(UITableViewCell*)cell forIndexPath:(NSIndexPath*)indexPath;

- (void)adapterDidSelectRowAtIndexPath:(NSIndexPath*)indexPath;
- (void)adapterDidDeselectRowAtIndexPath:(NSIndexPath*)indexPath;

@property (retain, nonatomic, readonly) BHBlockTableInfo *info;

@end
