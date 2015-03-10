//
//  Categorie.h
//  BarTendr
//
//  Created by Patouz on 16/01/2015.
//  Copyright (c) 2015 Patouz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Categorie : NSObject {
    
    long id_categorie;
    NSString *nom_categorie;
    NSString *url_img_categorie;
    UIImage * imgCat;
    
    
}

@property (nonatomic) long id_categorie;
@property (nonatomic, retain) NSString *nom_categorie;
@property (nonatomic, retain) NSString *url_img_categorie;
@property (nonatomic) UIImage * imgCat;

@end
