//
//  WSProduct.h
//  OrangeFashion
//
//  Created by Triệu Khang on 21/6/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WSProduct : NSObject

/**
 @TODO
 Not actually understand, but maybe we can set the related product of each one.
 */
@property (nonatomic, strong) NSArray *related_ids;

/**
 Each product may has many varuations, such as 2 colors of the same product.

 They may also have more different properties.
 */
@property (nonatomic, strong) NSArray *variations;

/**
 Categories of product as list of strings.
 */
@property (nonatomic, strong) NSArray *categories;

/**
 @TODO
 */
@property (nonatomic, strong) NSNumber *shippingRequired;

/**
 This is product id, not actually related with product's SKU.
 */
@property (nonatomic, strong) NSNumber *id;

/**
 Parents of product, maybe empty.
 */
@property (nonatomic, strong) NSArray *parent;

/**
 This is the regular price, there are another prices, called sale price, active price.
 
 They are not included any taxes.
 */
@property (nonatomic, strong) NSNumber *regularPrice;

/**
 This weight is used in the shipping method.
 */

@property (nonatomic, strong) NSNumber *weight;

/**
 Total sales of each product, include variations of it.
 */
@property (nonatomic, strong) NSNumber *total_sales;

@end
