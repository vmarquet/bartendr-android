//
//  listeBoissonViewController.m
//  BarTendr
//
//  Created by ESIEA on 28/11/2014.
//  Copyright (c) 2014 Patouz. All rights reserved.
//

#import "listeBoissonViewController.h"
#import "Globals.h"

@interface listeBoissonViewController ()

@end

@implementation listeBoissonViewController
@synthesize data2;
@synthesize labelTitre;
@synthesize boissonType;
@synthesize labelTable;
@synthesize SelectedIndex;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SelectedIndex = -1;
    
    labelTable.text = numberTable;
    labelTitre.text = boissonType;
    NSLog(@"boissonType = %@", boissonType);
    
    // Initialisation de la TableView
    data2 = [[NSMutableArray alloc]initWithObjects:@"Heineken", @"Kronenbourg", @"Grimbergen", @"Leffe Blonde", @"Leffe Ruby", @"Kilkenny", @"Guiness", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)section2 {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section2 {
    return [data2 count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"expendingCell";
    ExpendingCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil){
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"ExpendingCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.titleCell.text = [data2 objectAtIndex:indexPath.row];
    return cell;
    
}

-(CGFloat) tableView:(UITableView *) tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(SelectedIndex == indexPath.row){
        return 128;
    }
    else {
        return 54;
    }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"Row at Index > %d: %@", indexPath.row, data2[indexPath.row]);
    
    if(SelectedIndex == indexPath.row){
        SelectedIndex = -1;
        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        return;
    }
    
    if(SelectedIndex != -1){
        SelectedIndex = indexPath.row;
        NSIndexPath *prevPath = [NSIndexPath indexPathForRow:SelectedIndex inSection:0];
        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:prevPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    
    SelectedIndex = indexPath.row;
    NSLog(@"SelectedIndex = %d", SelectedIndex);
    [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
}



@end
