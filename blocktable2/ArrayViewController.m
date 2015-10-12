//
//  SecondViewController.m
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "ArrayViewController.h"
#import "BHBT2CompositeDataAdapter.h"
#import "BHBlockTable2.h"

@interface ArrayViewController ()

@end

@implementation ArrayViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    BHBT2CompositeDataAdapter *dataAdapter = [BHBT2CompositeDataAdapter adapter];
    self.blockTable.dataAdapter = dataAdapter;
    
    //
    // Array Section
    //
    
    NSArray *array = @[@"foo", @"bar", @"baz"];
    
    BHBT2ArraySection *section = [dataAdapter arraySectionWithCellIdentifier:@"TestCell" array:array];
    section.cellIdentifier = @"TestCell";
    
    section.configureCellForRow =^(BHBlockTableState *info) {
        
    };
    
    [dataAdapter refreshData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
