//
//  SimpleViewController.m
//  
//
//  Created by Ocean on 15/8/1.
//
//

#import "SimpleViewController.h"

#import "Frame.h"

@interface SimpleViewController ()
@property NSString *noteMessage;
@end

@implementation SimpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"Simple viewDidload");
//    Frame *backgroundView = [[Frame alloc]init];
//    self.view = backgroundView;

}

-(void)loadView{
    CGRect frame = [UIScreen mainScreen].bounds;
    Frame *backgroundView = [[Frame alloc]initWithFrame:frame];
    
//    CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
//    backgroundView.textField = [[UITextField alloc]initWithFrame:textFieldRect];
//    
//    backgroundView.textField.borderStyle = UITextBorderStyleRoundedRect;
//    
//    backgroundView.textField.placeholder = @"👾乖乖";
//    backgroundView.textField.returnKeyType = UIReturnKeyDone;
//    
//    backgroundView.textField.delegate = self;
//    backgroundView.textField.enablesReturnKeyAutomatically = YES;

    [backgroundView addSubview:backgroundView.textField];
   self.view = backgroundView;
    


}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"Simple viewDidDisappear"    );
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"%@",textField.text);
    _noteMessage  = textField.text;
    return YES;
}


-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        self.tabBarItem.image = i;
        self.tabBarItem.title = @"二胖胖👾";
    }
  

    return self;
}

@end
