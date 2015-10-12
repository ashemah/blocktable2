//
//  BHBlockTable2ViewController.h
//  blocktable2
//
//  Created by Ashemah Harrison on 3/07/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BHBlockTable2.h"

@interface BHBT2ViewController : UIViewController
@property (retain, nonatomic) BHBlockTable2 *blockTable;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@end
