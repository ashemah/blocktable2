//
//  BHBT2ArraySection.h
//  blocktable2
//
//  Created by Ashemah Harrison on 5/10/2015.
//  Copyright © 2015 Ashemah Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHBlockTableBaseSection.h"

@interface BHBT2ArraySection : BHBlockTableBaseSection {
    
}

@property (retain, nonatomic) NSArray *dataArray;

- (instancetype)initWithArray:(NSArray*)array;

@end
