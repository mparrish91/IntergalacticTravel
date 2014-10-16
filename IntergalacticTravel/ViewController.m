//
//  ViewController.m
//  IntergalacticTravel
//
//  Created by malcolm on 10/15/14.
//  Copyright (c) 2014 parry. All rights reserved.
//

#import "ViewController.h"
#import "VacationViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    VacationViewController *destinationViewController = segue.destinationViewController;
    destinationViewController.title = [sender currentTitle];
    
    if ([segue.identifier  isEqual: @"RedDwarf"]) {
        destinationViewController.starImage = [UIImage imageNamed:@"RedDwarf"];
    }else{
        destinationViewController.starImage = [UIImage imageNamed:@"BlueStar"];

    }
    
}

@end
