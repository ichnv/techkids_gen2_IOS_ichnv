//
//  Person.m
//  Unit4_demoUIViews
//
//  Created by IchNV on 1/24/16.
//  Copyright © 2016 IchNV. All rights reserved.
//

#import "Person.h"

@implementation Person


+(instancetype)personWithName:(NSString *)name andAge:(NSInteger)age andAddres:(NSString *)address andPhone:(NSString *)phone andNameImg:(NSString *)nameImg;
{
    Person *newPerson = [[Person alloc]init];
    newPerson.name = name;
    newPerson.age= age;
    newPerson.addres = address;
    newPerson.phone = phone;
    newPerson.nameImg = nameImg;
    
    return newPerson;
}

@end
