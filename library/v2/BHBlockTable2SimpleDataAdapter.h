//
//  BHBlockTable2SimpleDataSource.h
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBlockTable2DataAdapter.h"
#import "BHBlockTable2Types.h"

@interface BHBlockTable2SimpleDataAdapter : BHBlockTable2DataAdapter

@property (copy, nonatomic) NumberOfRowsInSectionBlock numberOfRowsInSection;
@property (copy, nonatomic) NumberOfSectionsBlock numberOfSections;
@property (copy, nonatomic) CellIdentifierForIndexPath cellIdentifierForIndexPath;
@property (copy, nonatomic) DidScrollToEndOfTable didScrollToEndOfTable;
@property (copy, nonatomic) DidSelectRowAtIndexPathBlock didSelectRow;
@property (copy, nonatomic) DidDeselectRowAtIndexPathBlock didDeselectRow;
@property (copy, nonatomic) WillDisplayCellForIndexPathBlock willDisplayCellForRow;
@property (copy, nonatomic) ConfigureCellForIndexPathBlock configureCellForRow;

@end
