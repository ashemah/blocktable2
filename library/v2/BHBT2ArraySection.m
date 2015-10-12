//
//  BHBT2ArraySection.m
//  blocktable2
//
//  Created by Ashemah Harrison on 5/10/2015.
//  Copyright © 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBT2ArraySection.h"

@implementation BHBT2ArraySection

- (instancetype)initWithArray:(NSArray*)array {
    
    self = [super init];
    
    if (self) {
        self.dataArray = array;
    }
    
    return self;
}

- (NSInteger)numberOfRowsForState:(BHBlockTableState*)info {
    return [self.dataArray count];
}

@end
