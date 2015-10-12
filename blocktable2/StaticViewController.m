//
//  StaticViewController.m
//  blocktable2
//
//  Created by Ashemah Harrison on 5/10/2015.
//  Copyright © 2015 Ashemah Harrison. All rights reserved.
//

#import "StaticViewController.h"
#import "BHBT2CompositeDataAdapter.h"
#import "BHBlockTable2.h"

@interface StaticViewController ()

@end

@implementation StaticViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BHBT2CompositeDataAdapter *dataAdapter = [BHBT2CompositeDataAdapter adapter];
    self.blockTable.dataAdapter = dataAdapter;
    
    //
    // Static Section
    //
    
    BHBT2StaticSection *section = [dataAdapter staticSection];
    section.cellIdentifier = @"TestCell";

    section.configureCellForRow =^(BHBlockTableState *info) {
        
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
