//
//  FirstViewController.m
//  blocktable2
//
//  Created by Ashemah Harrison on 29/06/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "SimpleViewController.h"
#import "BHBT2SimpleDataAdapter.h"

@interface SimpleViewController ()

@end

@implementation SimpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BHBT2SimpleDataAdapter *dataAdapter = [BHBT2SimpleDataAdapter adapter];
    self.blockTable.dataAdapter = dataAdapter;
    
    dataAdapter.cellIdentifierForIndexPath=^NSString*(BHBlockTableState *info) {
        return @"TestCell";
    };
    
    dataAdapter.numberOfSections=^NSInteger(BHBlockTableState *info) {
        return 1;
    };
    
    dataAdapter.numberOfRowsInSection=^NSInteger(BHBlockTableState *info) {
        return 12;
    };
    
    dataAdapter.configureCellForRow=^(BHBlockTableState *info) {
        UICollectionViewCell *cell = info.cell;
    };
    
    dataAdapter.configureViewForSection=^(BHBlockTableState *info) {
        UIView *view = info.view;
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
