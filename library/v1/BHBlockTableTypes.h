//
//  BHBlockTableTypes.h
//  btq
//
//  Created by Ashemah Harrison on 24/04/2014.
//  Copyright (c) 2014 Beat the Q. All rights reserved.
//

#ifndef btq_BHBlockTableTypes_h
#define btq_BHBlockTableTypes_h

#import <UIKit/UIKit.h>

@class BHBlockTable;
@class BHBlockTableInfo;

typedef void (^DidScrollToEndOfTable)(BHBlockTable*);
typedef void (^DidSelectRowAtIndexPathBlock)(BHBlockTableInfo*);
typedef void (^DidDeselectRowAtIndexPathBlock)(BHBlockTableInfo*);
typedef void (^WillDisplayCellForIndexPathBlock)(BHBlockTableInfo*info);
typedef void (^ConfigureCellForIndexPathBlock)(BHBlockTableInfo*info);
typedef void (^ConfigureEmptyCellForRowBlock)(BHBlockTableInfo*info);
typedef CGFloat (^HeightForRowBlock)(BHBlockTableInfo*);
typedef NSInteger (^NumberOfRowsBlock)(BHBlockTableInfo*);
typedef NSInteger (^NumberOfSectionsBlock)(BHBlockTableInfo*);
typedef void (^ConfigureHeaderViewBlock)(BHBlockTableInfo*);
typedef void (^RemoveRowBlock)(BHBlockTableInfo*);

#define BHBlockTableWeakSelf __typeof__(self) __weak

#endif
