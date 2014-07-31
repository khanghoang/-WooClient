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
@property (nonatomic, strong) NSNumber *totalSales;

/**
 @TODO
 Rating count on each product.
 */
@property (nonatomic, strong) NSNumber *ratingCount;

/**
 @TODO
 */
@property (nonatomic, strong) NSNumber *managingStock;

/**
 Title? is it the product name?
 */
@property (nonatomic, strong) NSString *title;

/**
 @TODO
 */
@property (nonatomic, strong) NSNumber *backOrdered;

/**
 This property allows us to know its product is saled or not
 */
@property (nonatomic, strong) NSNumber *onSale;

/**
 Status of this product.
 */
@property (nonatomic, strong) NSNumber *status;

/**
 @TODO
 Download limit
 */
@property (nonatomic, strong) NSNumber *downloadLimit;

/**
 Taxable
 */
@property (nonatomic, strong) NSNumber *taxable;

/**
 Allow review
 */
@property (nonatomic, strong) NSNumber *reviewAllowed;

/**
 Description
 */
@property (nonatomic, strong) NSString *description;

/**
 Purchaseable
 */
@property (nonatomic, strong) NSNumber *purchaseable;

/**
 Sale price
 */
@property (nonatomic, strong) NSNumber *salePrice;

/**
 Product type
 */
@property (nonatomic, strong) NSString *type;

/**
 Product permalink
 */
@property (nonatomic, strong) NSString *permalink;

/**
 Catalog visibility
 */
@property (nonatomic, strong) NSString *catalogVisibility;

/**
 Download expiry
 */
@property (nonatomic, strong) NSNumber *downloadExpiry;

/**
 Dismession
 */
@property (nonatomic, strong) NSDictionary *dimesions;

/**
 Cross sell ids
 */
@property (nonatomic, strong) NSArray *crossSellIDs;

/**
 Price
 */
@property (nonatomic, strong) NSNumber *price;

/** 
 Update at
 */
@property (nonatomic, strong) NSDate *updatedAt;

/**
 Attribute
 */
@property (nonatomic, strong) NSArray *attributes;

/**
 Shipping class
 */
@property (nonatomic, strong) NSString *shippingClass;

/**
 Virtual
 */
@property (nonatomic, strong) NSNumber *isVirtual;

/**
 Downloadable
 */
@property (nonatomic, strong) NSNumber *downloadable;

/**
 Upsell ids
 */
@property (nonatomic, strong) NSArray *upSellIDs;

/**
 Created at
 */
@property (nonatomic, strong) NSDate *createdAt;

/**
 Tax class
 */
@property (nonatomic, strong) NSString *taxClass;

/**
 Tags
 */
@property (nonatomic, strong) NSArray *tags;

/**
 HTML price
 */
@property (nonatomic, strong) NSString *htmlPrice;

/**
 In stock
 */
@property (nonatomic, strong) NSNumber *inStock;

/**
 Sold individually
 */
@property (nonatomic, strong) NSNumber *soldIndividually;

/**
 Short description
 */
@property (nonatomic, strong) NSString *shortDescription;

/**
 @TODO
 Download
 */
@property (nonatomic, strong) NSArray *downloads;


@end
