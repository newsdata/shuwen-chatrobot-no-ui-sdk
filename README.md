# iOS 智能会话SDK 接入指南(v1.0.2)

Deploy target : iOS 8.0.

## 1 如何接入

### 1.1 在项目的 Podfile 中，添加如下依赖：

```ruby
target 'YourProject' do
pod 'SHWChatRobotSDK', '~> 1.0.2'
end
```

### 1.2 更新安装

`pod update`
`pod install`

## 2 Regist your app.

Get your AppKey in our web site.
appKey值可从新华智云接口人获取（网站建设中，目前请联系接口人）

## 3 How to use

### 3.1 设置AppKey和AppSecret

```Objective-C
[SHWCRPublicConfig setSWAppKey:@"Your_APPKEY" secretKey:@"Your_APPSECRET"];
```

### 3.2 提问接口


```Objective-C
@interface SHWCRQuestionService : NSObject

/**
*    @brief    聊天中的发送问句接口
*
*    @param     question     用户问句
*    @param     completionHandler     包含服务器返回结果result的回调block
*/
+ (void)askQuestion:(NSString *)question callback:(void (^)(NSDictionary *result, NSString *clientErrMsg, NSInteger clientCode))completionHandler;
```

## 4 其它

项目使用了http协议，所以需要适配
- 在`Info.plist`中添加`NSAppTransportSecurity`类型`Dictionary`。
- 在`NSAppTransportSecurity`下添加`NSAllowsArbitraryLoads`类型`Boolean`,值设为`YES`。
- 将 `Build setting` 下 `Build Options` 中的`Enable Bitcode` 置为 `NO`。

## 5 错误码

|错误码|错误类型|
|---|---|
|200         |无错误|
|500      | 服务器错误|
|900    |   解析错误|
|901     | 没有有效数据|
|1000|   未知错误|
|1011        | 网络错误|



