//
//  ViewController.m
//  C6
//
//  Created by Ocean on 15/8/1.
//  Copyright (c) 2015年 Ocean. All rights reserved.
//

#import "ReminderViewController.h"

@interface ReminderViewController ()
@property   (nonatomic,weak)IBOutlet UIDatePicker *datePicker;
@end

@implementation ReminderViewController


-(IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"setting a  reminder for %@",date);
   
    
    
    
    UILocalNotification *note = [[UILocalNotification alloc]init];
        note.alertBody = @"胖胖好可爱🐶";
    note.fireDate = date    ;
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)viewWillAppear:(BOOL)animated    {
    [super viewWillAppear:animated];
    NSLog(@"Reminder viewWillAppear!");
    self.datePicker.date = [NSDate dateWithTimeIntervalSinceNow:1];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    UIImage *i = [UIImage imageNamed:@"Time.png"];
    
    self.tabBarItem.image = i;
    self.tabBarItem.title   = @"小可爱🐶";
    return self;
}



@end
