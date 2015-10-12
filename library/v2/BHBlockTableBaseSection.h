//
//  BHBlockTableSection.h
//  blocktable2
//
//  Created by Ashemah Harrison on 3/07/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BHBlockTableState.h"
#import "BHBlockTable2Types.h"
#import "BHBlockTable2AdapterBase.h"

@interface BHBlockTableBaseSection : NSObject

@property (assign, nonatomic, readonly) NSInteger sectionIndex;
@property (retain, nonatomic) NSString *cellIdentifier;
@property (retain, nonatomic, readonly) BHBlockTableState *info;

@property (retain, nonatomic) UIView *headerView;
@property (assign, nonatomic) BOOL isVisible;
@property (retain, nonatomic) NSString *headerViewClass;
@property (retain, nonatomic) NSMutableDictionary *userInfo;
@property (retain, nonatomic) NSString *emptyCellIdentifier;
@property (assign, nonatomic) BOOL isEmpty;
@property (assign, nonatomic) BOOL isOpen;

@property (copy, nonatomic) DidSelectRowAtIndexPathBlock didSelectRow;
@property (copy, nonatomic) DidDeselectRowAtIndexPathBlock didDeselectRow;
@property (copy, nonatomic) WillDisplayCellForIndexPathBlock willDisplayCellForRow;
@property (copy, nonatomic) ConfigureCellForIndexPathBlock configureCellForRow;
@property (copy, nonatomic) ConfigureEmptyCellForSectionBlock configureEmptyCellForRow;
@property (copy, nonatomic) HeightForRowBlock heightForRow;
@property (copy, nonatomic) ConfigureHeaderViewBlock configureHeaderView;
@property (copy, nonatomic) RemoveRowBlock removeRow;

- (instancetype)initWithParent:(BHBlockTable2AdapterBase*)parent;

- (NSInteger)numberOfRowsForState:(BHBlockTableState*)info;
- (CGFloat)heightForState:(BHBlockTableState*)info;

- (void)willDisplayCell:(id)cell forState:(BHBlockTableState*)info;
- (void)configureCell:(id)cell forState:(BHBlockTableState*)info;
- (void)configureHeaderView:(id)headerView forState:(BHBlockTableState*)info;
- (void)swipeDeleteRowIndex:(NSInteger)row forState:(BHBlockTableState*)info;
- (NSString*)cellIdentifierForState:(BHBlockTableState*)info;

- (void)removeRowForState:(BHBlockTableState*)info;
- (id)dataForState:(BHBlockTableState*)info;

- (void)selectRowForState:(BHBlockTableState*)info;
- (void)deselectRowForState:(BHBlockTableState*)info;
@end
