//
//  Commande.h
//  BarTendr
//
//  Created by ESIEA on 23/01/2015.
//  Copyright (c) 2015 Patouz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

@interface Commande : NSObject {
    
    NSMutableArray * liste_article;
    float total;
    int numberTable;
}

@property (nonatomic) float total;
@property (strong, nonatomic) NSMutableArray * liste_article;
@property (nonatomic) int numberTable;

-(float) calculTotalCommande :(Commande *) commande;

@end
