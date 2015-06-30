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

@class BHBlockTableInfo;

typedef void (^DidScrollToEndOfTable)(BHBlockTableInfo*);
typedef void (^DidSelectRowAtIndexPathBlock)(BHBlockTableInfo*);
typedef void (^DidDeselectRowAtIndexPathBlock)(BHBlockTableInfo*);
typedef void (^WillDisplayCellForIndexPathBlock)(BHBlockTableInfo*info);
typedef NSString* (^CellIdentifierForIndexPath)(BHBlockTableInfo*info);
typedef void (^ConfigureCellForIndexPathBlock)(BHBlockTableInfo*info);
typedef void (^ConfigureEmptyCellForRowBlock)(BHBlockTableInfo*info);
typedef CGFloat (^HeightForRowBlock)(BHBlockTableInfo*);
typedef NSInteger (^NumberOfRowsInSectionBlock)(BHBlockTableInfo*);
typedef NSInteger (^NumberOfSectionsBlock)(BHBlockTableInfo*);
typedef void (^ConfigureHeaderViewBlock)(BHBlockTableInfo*);
typedef void (^RemoveRowBlock)(BHBlockTableInfo*);

#endif
