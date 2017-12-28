//
//  SHWCRQuestionService.h
//  SHWChatRob
//
//  Created by Yang Yang on 2017/12/14.
//

#import <Foundation/Foundation.h>

@interface SHWCRQuestionService : NSObject

/**
 *    @brief    聊天中的发送问句接口
 *
 *    @param     question     用户问句
 *    @param     completionHandler     包含服务器返回结果result的回调block
 */
+ (void)askQuestion:(NSString *)question callback:(void (^)(NSDictionary *result, NSString *clientErrMsg, NSInteger clientCode))completionHandler;

@end
