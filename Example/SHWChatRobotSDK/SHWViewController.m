//
//  SWCViewController.m
//  SHWChatRobotSDK
//
//  Created by yayang on 12/14/2017.
//  Copyright (c) 2017 yayang. All rights reserved.
//

#define SHW_CHAT_ROB_ACCESS_KEY @""
#define SHW_CHAT_ROB_SECRET_KEY @""

#import "SHWViewController.h"
#import <SHWChatRob/SHWChatRob.h>

@interface SHWViewController ()
@property (weak, nonatomic) IBOutlet UITextView *txtView;

@end

@implementation SHWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [SHWCRPublicConfig setSWAppKey:SHW_CHAT_ROB_ACCESS_KEY secretKey:SHW_CHAT_ROB_SECRET_KEY];
    
    UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonClicked:)];
    [self.view addGestureRecognizer:tap];
}

- (void)buttonClicked:(UITapGestureRecognizer*)tap {
    [self.txtView resignFirstResponder];
}

- (IBAction)askClicked:(id)sender {
    [SHWCRQuestionService askQuestion:@"习近平是谁" callback:^(NSDictionary *result, NSString *clientErrMsg, NSInteger clientCode) {
        NSLog(@"clientCode %ld", clientCode);
        self.txtView.text = [NSString stringWithFormat:@"question, response data %@, msg %@, code %ld", result, clientErrMsg, clientCode];
    }];
}

@end
