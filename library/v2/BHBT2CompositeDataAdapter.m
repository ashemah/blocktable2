//
//  BHBlockTable2CompositeDataSource.m
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBT2CompositeDataAdapter.h"

@interface BHBT2CompositeDataAdapter ()
@property (retain, nonatomic) NSMutableArray *allSections;
@property (retain, nonatomic) NSArray *activeSections;
@end

@implementation BHBT2CompositeDataAdapter

+ (BHBT2CompositeDataAdapter*)adapter {
    return [[BHBT2CompositeDataAdapter alloc] init];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.allSections = [NSMutableArray array];
        self.activeSections = [NSArray array];
    }
    return self;
}

- (void)rebuildActiveSections {
    
    NSMutableArray *tmp = [NSMutableArray array];
    
    for (BHBlockTableBaseSection *section in self.allSections) {
        if (section.isVisible) {
            [tmp addObject:section];
        }
    }
    
    self.activeSections = tmp;
}

- (void)refreshData {
    [self rebuildActiveSections];
    self.internalRefreshData();
}

- (BHBT2ArraySection*)arraySectionWithCellIdentifier:(NSString*)cellIdentifier array:(NSArray*)array {
    
    BHBT2ArraySection *section = [[BHBT2ArraySection alloc] initWithArray:array];
    
    [self.allSections addObject:section];
    return section;
}

- (BHBT2DynamicSection*)dynamicSection {
    
    BHBT2DynamicSection *section = [[BHBT2DynamicSection alloc] init];
    [self.allSections addObject:section];
    return section;
}

- (BHBT2StaticSection*)staticSection {
    
    BHBT2StaticSection *section = [[BHBT2StaticSection alloc] init];
    [self.allSections addObject:section];
    return section;
}

- (BHBlockTableBaseSection*)activeSectionForIndex:(NSInteger)index {
    if (index >= 0 && index < [self.activeSections count]) {
        return self.activeSections[index];
    }
    else {
        return nil;
    }
}

- (NSInteger)adapterNumberOfRowsInSection:(NSInteger)sectionIndex {
    [self setupInfoSection:sectionIndex];

    BHBlockTableBaseSection *section = [self activeSectionForIndex:sectionIndex];
    return [section numberOfRowsForState:self.state];
}

- (NSInteger)adapterNumberOfSections {
    return [self.activeSections count];
}

- (NSString*)adapterCellIdentifierForIndexPath:(NSIndexPath*)indexPath {
    [self setupInfoForIndexPath:indexPath];
    
    BHBlockTableBaseSection *section = [self activeSectionForIndex:indexPath.section];
    return [section cellIdentifierForState:self.state];
}

- (void)adapterDidScrollToEndOfTable {
    
}

- (void)adapterWillDisplayCell:(UICollectionViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {

    [self setupInfoForCell:cell andIndexPath:indexPath];
    
    BHBlockTableBaseSection *section = [self activeSectionForIndex:indexPath.section];
    return [section willDisplayCell:cell forState:self.state];
}

- (void)adapterConfigureCell:(UICollectionViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {

    [self setupInfoForCell:cell andIndexPath:indexPath];    
    BHBlockTableBaseSection *section = [self activeSectionForIndex:indexPath.section];
    [section configureCell:cell forState:self.state];
}

- (void)adapterDidSelectRowAtIndexPath:(NSIndexPath*)indexPath {
    
    [self setupInfoForIndexPath:indexPath];
    BHBlockTableBaseSection *section = [self activeSectionForIndex:indexPath.section];
    [section selectRowForState:self.state];
}

- (void)adapterDidDeselectRowAtIndexPath:(NSIndexPath*)indexPath {
    
    [self setupInfoForIndexPath:indexPath];
    BHBlockTableBaseSection *section = [self activeSectionForIndex:indexPath.section];
    [section deselectRowForState:self.state];
}

- (void)adapterConfigureView:(UIView*)view forSection:(NSInteger)sectionIndex {
    
    [self setupInfoForView:view andSection:sectionIndex];
    BHBlockTableBaseSection *section = [self activeSectionForIndex:sectionIndex];
    [section deselectRowForState:self.state];
}

@end
