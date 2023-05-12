#import "ZendeskHelpCenterPlugin.h"
#if __has_include(<zendesk_helpcenter/zendesk_helpcenter-Swift.h>)
#import <zendesk_helpcenter/zendesk_helpcenter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "zendesk_helpcenter-Swift.h"
#endif

@implementation ZendeskHelpCenterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [ZendeskHelpCenterPlugin registerWithRegistrar:registrar];
}
@end
