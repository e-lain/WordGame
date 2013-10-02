//
//  CardGameViewControllerTwo.m
//  WordGame
//
//  Created by block7 on 9/27/13.
//  Copyright (c) 2013 block7. All rights reserved.
//

#import "CardGameViewControllerTwo.h"

@interface CardGameViewControllerTwo ()
@property (weak, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) NSString *completeStory;

@end

@implementation CardGameViewControllerTwo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.completeStory = @"";
     NSLog(@"%@,%@,%@",self.boyName, self.placeName, self.animalName);
    self.completeStory = [self.completeStory stringByAppendingFormat:@"One day %@ was walking around in %@.  While he was walking, %@ saw a(n) %@.  %@ thought that the %@ looked cute and cuddly.", self.boyName, self.placeName, self.boyName, self.animalName, self.boyName, self.animalName];
    NSLog(@"The complete story is %@", self.completeStory);
    self.storyLabel.text = self.completeStory;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
