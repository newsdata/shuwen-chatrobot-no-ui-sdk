//
//  SWCViewController.m
//  SHWChatRobWithoutUI
//
//  Created by yayang on 12/14/2017.
//  Copyright (c) 2017 yayang. All rights reserved.
//

#define SHW_CHAT_ROB_ACCESS_KEY @""
#define SHW_CHAT_ROB_SECRET_KEY @""

#import "SHWViewController.h"
#import <SHWChatRobWithoutUI/SHWChatRobWithoutUI.h>
@interface SHWViewController ()
@property (weak, nonatomic) IBOutlet UITextView *txtView;

@end

@implementation SHWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [SHWCRPublicConfig setSWAppKey:SHW_CHAT_ROB_ACCESS_KEY secretKey:SHW_CHAT_ROB_SECRET_KEY];
}

- (IBAction)askClicked:(id)sender {
    [SHWCRQuestionService askQuestion:@"习近平是谁" callback:^(NSArray<NSDictionary *> *result, NSString *clientErrMsg, NSInteger clientCode) {
        NSLog(@"clientCode %ld", clientCode);
        self.txtView.text = [NSString stringWithFormat:@"question, response data %@, msg %@, code %ld", result, clientErrMsg, clientCode];
    }];
}

- (IBAction)recommendClicked:(id)sender {
//    [SHWCRQuestionService fetchRecommandWithQuestion:@"习近平是谁" scene:SWC_SCENE_CHAT count:10 callback:^(NSArray<NSDictionary *> *result, NSString *clientErrMsg, NSInteger clientCode) {
//        self.txtView.text = [NSString stringWithFormat:@"recommand, response data %@, msg %@, code %ld", result, clientErrMsg, clientCode];
//    }];
}

- (IBAction)newsClickClicked:(id)sender {
//    [SHWCRLogService newsClicked:@"123"];
}


@end
