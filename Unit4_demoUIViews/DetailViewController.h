//
//  DetailViewController.h
//  Unit4_demoUIViews
//
//  Created by IchNV on 1/30/16.
//  Copyright © 2016 IchNV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *tblName;
@property (weak, nonatomic) IBOutlet UILabel *tblAddres;
@property (weak, nonatomic) IBOutlet UILabel *tblAge;
@property (weak, nonatomic) IBOutlet UILabel *tblPhone;
@property (nonatomic,assign) Person *personIndex;

@end
