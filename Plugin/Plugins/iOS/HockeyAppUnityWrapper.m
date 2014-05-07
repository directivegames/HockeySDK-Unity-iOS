#import "HockeyAppUnity.h"
#import "HockeyAppUnityWrapper.h"

void HockeyApp_StartHockeyManager(char *appID) {
  
  [HockeyAppUnity startManagerWithIdentifier:[NSString stringWithUTF8String:appID]];
}

void HockeyApp_StartHockeyManagerWithAuthentication(char *appID, char *authType, char *secret, bool updateManagerEnabled) {
  
  [HockeyAppUnity startManagerWithIdentifier:[NSString stringWithUTF8String:appID]
                                    authType:[NSString stringWithUTF8String:authType]
                                      secret:[NSString stringWithUTF8String:secret]
                        updateManagerEnabled:updateManagerEnabled];
}

void HockeyApp_ShowFeedbackListView(){
  
  [HockeyAppUnity showFeedbackListView];
}

char* HockeyApp_GetAppVersion(){
  
  NSString *appVersion = [[HockeyAppUnity appVersion] UTF8String];
  char* res = (char*)malloc(strlen(appVersion) + 1);
  strcpy(res, appVersion);
  
  return res;
}

char* HockeyApp_GetBundleIdentifier(){
  
  NSString *bundleIdentifier = [[HockeyAppUnity bundleIdentifier] UTF8String];
  char* res = (char*)malloc(strlen(bundleIdentifier) + 1);
  strcpy(res, bundleIdentifier);
  
  return res;
}