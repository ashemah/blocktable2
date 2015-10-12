//
//  BHBlockTableSection.m
//  blocktable2
//
//  Created by Ashemah Harrison on 3/07/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBlockTableBaseSection.h"

@interface BHBlockTableBaseSection ()
@property (assign, nonatomic) NSInteger sectionIndex;
@end

@implementation BHBlockTableBaseSection

- (instancetype)initWithParent:(BHBlockTable2AdapterBase*)parent {

    self = [self init];
    
    if (self) {
    }
    
    return self;
}

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        self.isVisible = YES;
    }
    
    return self;
}

- (NSString*)cellIdentifierForState:(BHBlockTableState *)info {
    return self.cellIdentifier;
}

- (void)configureCell:(id)cell forState:(BHBlockTableState *)info {
    
    if (self.configureCellForRow) {
        self.configureCellForRow(info);
    }
}

- (NSInteger)numberOfRowsForState:(BHBlockTableState*)info {
    NSAssert(false, @"Not implemented");
    return 0;
}

- (CGFloat)heightForState:(BHBlockTableState*)info; {
    NSAssert(false, @"Not implemented");
    return 0;
}

- (void)willDisplayCell:(id)cell forState:(BHBlockTableState*)info {
    
}

- (void)configureHeaderView:(id)headerView forState:(BHBlockTableState*)info {
    if (self.configureHeaderView) {
        self.configureHeaderView(info);
    }
}

- (void)swipeDeleteRowIndex:(NSInteger)row forState:(BHBlockTableState*)info {
    
}

- (void)removeRowForState:(BHBlockTableState*)info {
    
}

- (void)selectRowForState:(BHBlockTableState*)info {
    if (self.didSelectRow) {
        self.didSelectRow(info);
    }
}

- (void)deselectRowForState:(BHBlockTableState*)info {
    if (self.didDeselectRow) {
        self.didDeselectRow(info);
    }
}

- (id)dataForState:(BHBlockTableState*)info {
    NSAssert(false, @"Not implemented");
    return nil;
}

@end
