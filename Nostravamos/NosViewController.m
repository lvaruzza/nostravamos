//
//  NosViewController.m
//  Nostravamos
//
//  Created by Leonardo Varuzza on 3/6/14.
//  Copyright (c) 2014 Leonardo Varuzza. All rights reserved.
//

#import "NosViewController.h"
#import "NosGenerator.h"

@interface NosViewController ()

@property(strong,nonatomic) IBOutlet UILabel *text;
@property(strong,nonatomic) NosGenerator *generator;
-(IBAction) click1;
@end

@implementation NosViewController
{
}

@synthesize text;
@synthesize generator;

-(IBAction)click1 {
    text.text=[self.generator generate];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NosGenerator* gen = [[NosGenerator alloc] init];
    [self setGenerator: gen];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
