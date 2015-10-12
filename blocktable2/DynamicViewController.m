//
//  DynamicViewController.m
//  blocktable2
//
//  Created by Ashemah Harrison on 5/10/2015.
//  Copyright © 2015 Ashemah Harrison. All rights reserved.
//

#import "DynamicViewController.h"
#import "BHBT2CompositeDataAdapter.h"
#import "BHBlockTable2.h"

@interface DynamicViewController ()

@end

@implementation DynamicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BHBT2CompositeDataAdapter *dataAdapter = [BHBT2CompositeDataAdapter adapter];
    self.blockTable.dataAdapter = dataAdapter;
    
    //
    // Dynamic Section
    //
    
    BHBT2DynamicSection *section = [dataAdapter dynamicSection];
    section.cellIdentifier = @"TestCell";

    section.configureCellForRow =^(BHBlockTableState *state) {
        
    };
    
    section.numberOfRowsInSection=^NSInteger(BHBlockTableState *state) {
        return 4;
    };
    
    [dataAdapter refreshData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
