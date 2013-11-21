//
//  ViewController.m
//  runtimeTest
//
//  Created by Gosc 01 on 12.11.2013.
//  Copyright (c) 2013 tw. All rights reserved.
//

#import "ViewController.h"
#import "A.h"
#import "B.h"
#import "C.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    C *obj = [[C alloc] init];
    obj->a = 0xaaaaaaaa;
    obj->b = 0xbbbbbbbb;
    obj->c = 0xcccccccc;
    
    NSData *objData = [NSData dataWithBytes:(__bridge const void *)(obj) length:malloc_size(obj)];
    
    NSLog(@"Object contains %@", objData);
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
