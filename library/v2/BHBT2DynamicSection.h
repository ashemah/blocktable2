//
//  BHBlockTable2DynamicSection.h
//  blocktable2
//
//  Created by Ashemah Harrison on 3/07/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHBlockTableBaseSection.h"

@interface BHBT2DynamicSection : BHBlockTableBaseSection {
    
}

@property (copy, nonatomic) NumberOfRowsInSectionBlock numberOfRowsInSection;
@property (copy, nonatomic) NumberOfSectionsBlock numberOfSections;
@property (copy, nonatomic) CellIdentifierForIndexPath cellIdentifierForIndexPath;
@property (copy, nonatomic) WillDisplayCellForIndexPathBlock willDisplayCellForRow;
@property (copy, nonatomic) ConfigureCellForIndexPathBlock configureCellForRow;
@property (copy, nonatomic) ConfigureViewForSectionBlock configureViewForSection;

@end
