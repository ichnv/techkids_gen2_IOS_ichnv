//
//  CustomCell.h
//  Unit4_demoUIViews
//
//  Created by IchNV on 1/29/16.
//  Copyright © 2016 IchNV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *tblName;
@property (weak, nonatomic) IBOutlet UILabel *tblAge;

@end
