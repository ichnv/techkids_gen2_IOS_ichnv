//
//  Person.h
//  Unit4_demoUIViews
//
//  Created by IchNV on 1/24/16.
//  Copyright © 2016 IchNV. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign) NSInteger age;
@property(nonatomic,assign) NSString *addres;
@property(nonatomic,assign) NSString *phone;
@property(nonatomic,strong) NSString *nameImg;

+(instancetype)personWithName:(NSString *)name andAge:(NSInteger)age andAddres:(NSString *)addres andPhone:(NSString *)phone andNameImg:(NSString *)nameImg;

@end
