//
//  BHBlockTable2Types.h
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#ifndef blocktable2_BHBlockTable2Types_h
#define blocktable2_BHBlockTable2Types_h

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@class BHBlockTableState;

typedef void (^DidSelectRowAtIndexPathBlock)(BHBlockTableState*);
typedef void (^DidDeselectRowAtIndexPathBlock)(BHBlockTableState*);
typedef void (^WillDisplayCellForIndexPathBlock)(BHBlockTableState*info);
typedef NSString* (^CellIdentifierForIndexPath)(BHBlockTableState*info);
typedef void (^ConfigureCellForIndexPathBlock)(BHBlockTableState*info);
typedef void (^ConfigureViewForSectionBlock)(BHBlockTableState*info);
typedef void (^ConfigureEmptyCellForSectionBlock)(BHBlockTableState*info);
typedef CGFloat (^HeightForRowBlock)(BHBlockTableState*);
typedef NSInteger (^NumberOfRowsInSectionBlock)(BHBlockTableState*);
typedef NSInteger (^NumberOfSectionsBlock)(BHBlockTableState*);
typedef void (^ConfigureHeaderViewBlock)(BHBlockTableState*);
typedef void (^RemoveRowBlock)(BHBlockTableState*);

#endif
