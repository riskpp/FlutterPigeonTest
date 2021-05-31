#import "MmTestPlugin2Plugin.h"
#if __has_include(<mm_test_plugin2/mm_test_plugin2-Swift.h>)
#import <mm_test_plugin2/mm_test_plugin2-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mm_test_plugin2-Swift.h"
#endif

@implementation MmTestPlugin2Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMmTestPlugin2Plugin registerWithRegistrar:registrar];
}
@end
