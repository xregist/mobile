// Objective-C API for talking to golang.org/x/mobile/bind/objc/testpkg Go package.
//   gobind -lang=objc golang.org/x/mobile/bind/objc/testpkg
//
// File is generated by gobind. Do not edit.

#include "GoTestpkg.h"
#include <Foundation/Foundation.h>
#include "seq.h"

static NSString *errDomain = @"go.golang.org/x/mobile/bind/objc/testpkg";

#define _DESCRIPTOR_ "testpkg"

#define _CALL_BytesAppend_ 1
#define _CALL_CallSSum_ 2
#define _CALL_CollectS_ 3
#define _CALL_Hello_ 4
#define _CALL_Hi_ 5
#define _CALL_Int_ 6
#define _CALL_NewS_ 7
#define _CALL_ReturnsError_ 8
#define _CALL_Sum_ 9

#define _GO_testpkg_S_DESCRIPTOR_ "go.testpkg.S"
#define _GO_testpkg_S_FIELD_X_GET_ (0x00f)
#define _GO_testpkg_S_FIELD_X_SET_ (0x01f)
#define _GO_testpkg_S_FIELD_Y_GET_ (0x10f)
#define _GO_testpkg_S_FIELD_Y_SET_ (0x11f)
#define _GO_testpkg_S_Sum_ (0x00c)

@implementation GoTestpkgS {
}

- (id)initWithRef:(GoSeqRef*)ref {
	self = [super init];
	if (self) { _ref = ref; }
	return self;
}

- (double)X {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeRef(&in_, self.ref);
	go_seq_send(_GO_testpkg_S_DESCRIPTOR_, _GO_testpkg_S_FIELD_X_GET_, &in_, &out_);
	double ret_ = go_seq_readFloat64(&out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
	return ret_;
}

- (void)setX:(double)v {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeRef(&in_, self.ref);
	go_seq_writeFloat64(&in_, v);
	go_seq_send(_GO_testpkg_S_DESCRIPTOR_, _GO_testpkg_S_FIELD_X_SET_, &in_, &out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
}

- (double)Y {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeRef(&in_, self.ref);
	go_seq_send(_GO_testpkg_S_DESCRIPTOR_, _GO_testpkg_S_FIELD_Y_GET_, &in_, &out_);
	double ret_ = go_seq_readFloat64(&out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
	return ret_;
}

- (void)setY:(double)v {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeRef(&in_, self.ref);
	go_seq_writeFloat64(&in_, v);
	go_seq_send(_GO_testpkg_S_DESCRIPTOR_, _GO_testpkg_S_FIELD_Y_SET_, &in_, &out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
}

- (double)Sum {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeRef(&in_, self.ref);
	go_seq_send(_GO_testpkg_S_DESCRIPTOR_, _GO_testpkg_S_Sum_, &in_, &out_);
	double ret0_ = go_seq_readFloat64(&out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
	return ret0_;
}

@end

NSData* GoTestpkgBytesAppend(NSData* a, NSData* b) {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeByteArray(&in_, a);
	go_seq_writeByteArray(&in_, b);
	go_seq_send(_DESCRIPTOR_, _CALL_BytesAppend_, &in_, &out_);
	NSData* ret0_ = go_seq_readByteArray(&out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
	return ret0_;
}

double GoTestpkgCallSSum(GoTestpkgS* s) {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeRef(&in_, s.ref);
	go_seq_send(_DESCRIPTOR_, _CALL_CallSSum_, &in_, &out_);
	double ret0_ = go_seq_readFloat64(&out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
	return ret0_;
}

int GoTestpkgCollectS(int want, int timeoutSec) {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeInt(&in_, want);
	go_seq_writeInt(&in_, timeoutSec);
	go_seq_send(_DESCRIPTOR_, _CALL_CollectS_, &in_, &out_);
	int ret0_ = go_seq_readInt(&out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
	return ret0_;
}

NSString* GoTestpkgHello(NSString* s) {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeUTF8(&in_, s);
	go_seq_send(_DESCRIPTOR_, _CALL_Hello_, &in_, &out_);
	NSString* ret0_ = go_seq_readUTF8(&out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
	return ret0_;
}

void GoTestpkgHi() {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_send(_DESCRIPTOR_, _CALL_Hi_, &in_, &out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
}

void GoTestpkgInt(int32_t x) {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeInt32(&in_, x);
	go_seq_send(_DESCRIPTOR_, _CALL_Int_, &in_, &out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
}

GoTestpkgS* GoTestpkgNewS(double x, double y) {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeFloat64(&in_, x);
	go_seq_writeFloat64(&in_, y);
	go_seq_send(_DESCRIPTOR_, _CALL_NewS_, &in_, &out_);
	GoSeqRef* ret0__ref = go_seq_readRef(&out_);
	GoTestpkgS* ret0_ = ret0__ref.obj;
	if (ret0_ == NULL) {
		ret0_ = [[GoTestpkgS alloc] initWithRef:ret0__ref];
	}
	go_seq_free(&in_);
	go_seq_free(&out_);
	return ret0_;
}

BOOL GoTestpkgReturnsError(BOOL b, NSString** ret0_, NSError** error) {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeBool(&in_, b);
	go_seq_send(_DESCRIPTOR_, _CALL_ReturnsError_, &in_, &out_);
	NSString* ret0__val = go_seq_readUTF8(&out_);
	if (ret0_ != NULL) {
		*ret0_ = ret0__val;
	}
	NSString* _error = go_seq_readUTF8(&out_);
	if ([_error length] != 0 && error != nil) {
		NSMutableDictionary *details = [NSMutableDictionary dictionary];
		[details setValue:_error forKey:NSLocalizedDescriptionKey];
		*error = [NSError errorWithDomain:errDomain code:1 userInfo:details];
	}
	go_seq_free(&in_);
	go_seq_free(&out_);
	return ([_error length] == 0);
}

int64_t GoTestpkgSum(int64_t x, int64_t y) {
	GoSeq in_ = {};
	GoSeq out_ = {};
	go_seq_writeInt64(&in_, x);
	go_seq_writeInt64(&in_, y);
	go_seq_send(_DESCRIPTOR_, _CALL_Sum_, &in_, &out_);
	int64_t ret0_ = go_seq_readInt64(&out_);
	go_seq_free(&in_);
	go_seq_free(&out_);
	return ret0_;
}

