//
//  BHBlockTable2CompositeDataSource.h
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBlockTable2AdapterBase.h"
#import "BHBlockTable2Types.h"
#import "BHBT2ArraySection.h"
#import "BHBT2DynamicSection.h"
#import "BHBT2StaticSection.h"

@interface BHBT2CompositeDataAdapter : BHBlockTable2AdapterBase

+ (BHBT2CompositeDataAdapter*)adapter;

@property (retain, nonatomic, readonly) NSMutableArray *allSections;
@property (retain, nonatomic, readonly) NSArray *activeSections;

@property (copy, nonatomic) CellIdentifierForIndexPath cellIdentifierForIndexPath;
@property (copy, nonatomic) DidSelectRowAtIndexPathBlock didSelectRow;
@property (copy, nonatomic) DidDeselectRowAtIndexPathBlock didDeselectRow;
@property (copy, nonatomic) WillDisplayCellForIndexPathBlock willDisplayCellForRow;
@property (copy, nonatomic) ConfigureCellForIndexPathBlock configureCellForRow;
@property (copy, nonatomic) ConfigureViewForSectionBlock configureViewForSection;

- (BHBT2ArraySection*)arraySectionWithCellIdentifier:(NSString*)cellIdentifier array:(NSArray*)array;
- (BHBT2DynamicSection*)dynamicSection;
- (BHBT2StaticSection*)staticSection;
- (void)refreshData;

@end
