//
//  Catalog.m
//  CartTable
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Catalog.h"
#import "Product.h"

@implementation Catalog{
    NSArray *data;
}

static Catalog *_instance = nil;
+ (id)defaultCatalog{
    if(nil == _instance)
        _instance = [[Catalog alloc]init];
    return _instance;
}

- (id)init{
    self = [super init];
    if(self){
        data = @[[Product product:@"bmw" price:@"100" image:@"car1.png"],
                 [Product product:@"audi" price:@"200" image:@"car2.png"],
                 [Product product:@"hyundai" price:@"250" image:@"car3.png"],
                 [Product product:@"kia" price:@"120" image:@"car4.png"],
                 [Product product:@"benz" price:@"300" image:@"car5.png"]];
        
    }
    return self;
}

- (id)productAt:(int)index{
    return [data objectAtIndex:index];
}

- (int)numberOfProducts{
    return [data count];
}

@end
