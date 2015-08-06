//
//  Frame.m
//  FrameAndBound
//
//  Created by Ocean on 15/8/1.
//  Copyright (c) 2015年 Ocean. All rights reserved.
//

#import "Frame.h"

@interface Frame()
@property (strong,nonatomic)UIColor *circleColor;
@end

@implementation Frame

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
        
        self.circleColor = [UIColor lightGrayColor];
        
        
        CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
        self.textField = [[UITextField alloc]initWithFrame:textFieldRect];
        self.textField.borderStyle = UITextBorderStyleRoundedRect;
        self.textField.placeholder = @"👾乖乖";
        self.textField.returnKeyType = UIReturnKeyDone;
        self.textField.delegate = self;
        self.textField.enablesReturnKeyAutomatically = YES;

        
        
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
    
    CGRect bounds = self.bounds;

    
    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    UIBezierPath *path = [[UIBezierPath alloc]init];
    
    [path addArcWithCenter:self.center radius:radius startAngle:M_PI / 2 endAngle:M_PI *2 clockwise:NO];
    path.lineWidth = 10;

    
    
    [logoImage drawInRect: rect];
    [self.circleColor setStroke];

    [path stroke];

}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touched");
    self.circleColor = [UIColor redColor];
    
    [self.textField resignFirstResponder];
    
}

-(void)setCircleColor:(UIColor *)pcircleColor{
    _circleColor = pcircleColor;
    [self setNeedsDisplay];
    
}

@end

