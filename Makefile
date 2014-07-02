GO_EASY_ON_ME=1
__THEOS_TARGET_ARG_1 = clang

include theos/makefiles/common.mk

CFLAGS+=  -mno-thumb -O0 -fno-exceptions -fno-rtti  -fno-common -ffast-math -fno-threadsafe-statics -Wno-deprecated-objc-isa-usage -Wno-deprecated-declarations -ObjC
LDFLAGS+= -F. -framework CouchbaseLite -framework SystemConfiguration -framework CFNetwork -framework Security -lsqlite3 -lz libs/HTTPKit.a GRMustache/lib/libGRMustache6-iOS.a libs/libssl.a libs/libcrypto.a
TWEAK_NAME = iSpy
iSpy_FILES = Tweak.xm iSpy.logwriter.xm iSpy.substrate.xm iSpy.msgSend_stret.xm iSpy.msgSend.xm hooks_C_system_calls.xm hooks_CoreFoundation.xm iSpy.instance.xm iSpy.class.xm iSpy.web.xm typestring.xm
iSpy_OBJ_FILES = 
iSpy_FRAMEWORKS = UIKit MobileCoreServices

include $(THEOS_MAKE_PATH)/tweak.mk
