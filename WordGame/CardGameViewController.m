//
//  CardGameViewController.m
//  WordGame
//
//  Created by block7 on 9/26/13.
//  Copyright (c) 2013 block7. All rights reserved.
//

#import "CardGameViewController.h"
#import "CardGameViewControllerTwo.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSString *boyName;
@property (nonatomic) NSUInteger whichWord;
@property (strong, nonatomic) NSString *placeName;
@property (strong, nonatomic) NSString *animalName;
@property (weak, nonatomic) IBOutlet UIButton *showButton;

@end

@implementation CardGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"view did load");
	// Do any additional setup after loading the view, typically from a nib.
    self.showButton.hidden = YES;
    self.messageLabel.text = @"Welcome to the word game! Please enter a boy's name.";
    self.whichWord = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)wordChosen:(UITextField *)sender {
    if (self.whichWord == 0) {
        NSLog(@"word chosen running");
        self.boyName = self.textField.text;
        NSLog(@"The boy's name is %@", self.boyName);
        self.textField.text = @"";
        self.messageLabel.text = @"Now please enter the name of a place";
        self.whichWord++;
    } else if (self.whichWord == 1) {
        self.placeName = self.textField.text;
        NSLog (@"the place name is: %@", self.placeName);
        self.textField.text = @"";
        self.messageLabel.text = @"Now please enter the name of a type of animal";
        self.whichWord = 2;
    } else {
        self.animalName = self.textField.text;
        NSLog(@"The animal's name is %@", self.animalName);
        self.textField.text = @"";
        self.messageLabel.text = @"Please press the button below to show the story!";
        self.showButton.hidden = NO;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CardGameViewControllerTwo *svc =
    [segue destinationViewController];
    svc.boyName = self.boyName;
    svc.placeName = self.placeName;
    svc.animalName = self.animalName;
    NSLog(@"%@,%@,%@",svc.boyName, svc.placeName, svc.animalName);
}

@end
