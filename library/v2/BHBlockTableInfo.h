//
//  BHBlockTableInfo.h
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    InfoMode_RenderingCells,
    InfoMode_CalculatingHeight
} InfoMode;

@interface BHBlockTableInfo : NSObject

@property (assign, nonatomic) NSIndexPath *lastTappedIndexPath;

@property (assign, nonatomic) NSInteger rowIndex;
@property (assign, nonatomic) NSInteger sectionIndex;
@property (retain, nonatomic) id cell;
@property (retain, nonatomic) id view;

@property (assign, nonatomic) BOOL isFirstRowInSection;
@property (assign, nonatomic) BOOL isLastRowInSection;
@property (assign, nonatomic) InfoMode infoMode;

@property (assign, nonatomic) BOOL automaticallyDeselectSelectedRow;

@property (assign, nonatomic) id obj;

@property (assign, nonatomic) BOOL sectionIsOpen;

@property (retain, nonatomic, readonly) NSMutableArray *rowsToRefresh;

@end
