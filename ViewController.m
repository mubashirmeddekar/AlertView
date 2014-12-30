//
//  ViewController.m
//  AlertView
//
//  Created by Mubashir Meddekar on 20/12/14.
//  Copyright (c) 2014 Mubashir Meddekar. All rights reserved.
//

#import "ViewController.h"

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
- (IBAction)alertView:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Battery Low" message:@"Please connect to Charger!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"First",@"SEcond", nil];
    [alert show];
}
- (IBAction)actionSheet:(id)sender {
    UIActionSheet *sheet = [[UIActionSheet alloc]initWithTitle:@"Settings" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete" otherButtonTitles:@"First",@"SEcond", nil];
    
    [sheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        NSLog(@"First");
    }
    else if (buttonIndex == 2) {
        NSLog(@"Second");
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        NSLog(@"First");
    }
    else if (buttonIndex == 2) {
        NSLog(@"Second");
    }
}

@end
