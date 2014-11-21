#import "HockeyAppUnity.h"
#import "HockeyAppUnityWrapper.h"

void HockeyApp_StartHockeyManager(char *appID, char *serverURL, char *authType, char *secret, bool updateManagerEnabled, bool autoSendEnabled) {
  
    [HockeyAppUnity startManagerWithIdentifier:[NSString stringWithUTF8String:appID]
                                   serverUrl:[NSString stringWithUTF8String:serverURL]
                                    authType:[NSString stringWithUTF8String:authType]
                                      secret:[NSString stringWithUTF8String:secret]
                        updateManagerEnabled:updateManagerEnabled
                             autoSendEnabled:autoSendEnabled];
}

void HockeyApp_ShowFeedbackListView()
{
    [HockeyAppUnity showFeedbackListView];
}

char* HockeyApp_GetAppVersion()
{
    NSString* appVersion = [HockeyAppUnity appVersion];
    NSUInteger length = [appVersion lengthOfBytesUsingEncoding:NSUTF8StringEncoding] + 1;
    char* res = (char*)malloc(length);
    [appVersion getCString:res maxLength:length encoding:NSUTF8StringEncoding];
  
    return res;
}

char* HockeyApp_GetBundleIdentifier()
{
    NSString* bundleIdentifier = [HockeyAppUnity bundleIdentifier];
    NSUInteger length = [bundleIdentifier lengthOfBytesUsingEncoding:NSUTF8StringEncoding] + 1;
    char* res = (char*)malloc(length);
    [bundleIdentifier getCString:res maxLength:length encoding:NSUTF8StringEncoding];

    return res;
}
