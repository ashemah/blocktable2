//
//  BHBlockTable2DynamicSection.m
//  blocktable2
//
//  Created by Ashemah Harrison on 3/07/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBT2DynamicSection.h"

@implementation BHBT2DynamicSection

- (NSInteger)sectionNumberOfRows:(BHBlockTableState*)info {
    
    if (self.numberOfRowsInSection) {
        return self.numberOfRowsInSection(info);
    }

    NSAssert(FALSE, @"You must set the number of rows in a dynamic section");
    return 0;
}

@end
