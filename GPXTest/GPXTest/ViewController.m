//
//  ViewController.m
//  GPXTest
//
//  Created by Eric Ito on 3/15/14.
//  Copyright (c) 2014 Eric Ito. All rights reserved.
//

#import "ViewController.h"
#import "GPX.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"metadata" ofType:@"gpx"];
    GPXRoot *root = [GPXParser parseGPXAtPath:path];
    for (GPXLink *link in root.metadata.links) {
        NSLog(@"link: %@", link);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
