/*
* AUTOGENERATED FILE. DO NOT EDIT IT
* Generated by "generate_spidermonkey_bindings.py -c CocosBuilderReader_spidermonkey.ini" on 2012-07-31
*/

// needed for callbacks from objective-c to JS
#import <objc/runtime.h>
#import "JRSwizzle.h"

#import "jsfriendapi.h"
#import "js_bindings_config.h"
#import "ScriptingCore.h"

#import "js_bindings_CocosBuilderReader_classes.h"


/*
 * CCBReader
 */
#pragma mark - CCBReader

JSClass* JSPROXY_CCBReader_class = NULL;
JSObject* JSPROXY_CCBReader_object = NULL;
// Constructor
JSBool JSPROXY_CCBReader_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *jsobj = [JSPROXY_CCBReader createJSObjectWithRealObject:nil context:cx];
    JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));

    return JS_TRUE;
}

// Destructor
void JSPROXY_CCBReader_finalize(JSFreeOp *fop, JSObject *obj)
{
	CCLOGINFO(@"spidermonkey: finalizing JS object %p (CCBReader)", obj);
	del_proxy_for_jsobject( obj );
}

// Arguments: 
// Ret value: NSString* (S)
JSBool JSPROXY_CCBReader_ccbDirectoryPath_static(JSContext *cx, uint32_t argc, jsval *vp) {
	JSB_PRECONDITION( argc == 0, "Invalid number of arguments" );
	NSString* ret_val;

	ret_val = [CCBReader ccbDirectoryPath ];

	JSString *ret_obj = JS_NewStringCopyZ(cx, [ret_val UTF8String]);
	JS_SET_RVAL(cx, vp, STRING_TO_JSVAL(ret_obj) );

	return JS_TRUE;
}

void JSPROXY_CCBReader_createClass(JSContext *cx, JSObject* globalObj, const char* name )
{
	JSPROXY_CCBReader_class = (JSClass *)calloc(1, sizeof(JSClass));
	JSPROXY_CCBReader_class->name = name;
	JSPROXY_CCBReader_class->addProperty = JS_PropertyStub;
	JSPROXY_CCBReader_class->delProperty = JS_PropertyStub;
	JSPROXY_CCBReader_class->getProperty = JS_PropertyStub;
	JSPROXY_CCBReader_class->setProperty = JS_StrictPropertyStub;
	JSPROXY_CCBReader_class->enumerate = JS_EnumerateStub;
	JSPROXY_CCBReader_class->resolve = JS_ResolveStub;
	JSPROXY_CCBReader_class->convert = JS_ConvertStub;
	JSPROXY_CCBReader_class->finalize = JSPROXY_CCBReader_finalize;
	JSPROXY_CCBReader_class->flags = JSCLASS_HAS_RESERVED_SLOTS(1);

	static JSPropertySpec properties[] = {
		{0, 0, 0, 0, 0}
	};
	static JSFunctionSpec funcs[] = {
		JS_FS_END
	};
	static JSFunctionSpec st_funcs[] = {
		JS_FN("ccbDirectoryPath", JSPROXY_CCBReader_ccbDirectoryPath_static, 0, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("load", JSPROXY_CCBReader_nodeGraphFromFile_owner_parentSize__static, 3, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FN("loadScene", JSPROXY_CCBReader_sceneWithNodeGraphFromFile_owner_parentSize__static, 3, JSPROP_PERMANENT | JSPROP_SHARED | JSPROP_ENUMERATE),
		JS_FS_END
	};

	JSPROXY_CCBReader_object = JS_InitClass(cx, globalObj, JSPROXY_NSObject_object, JSPROXY_CCBReader_class, JSPROXY_CCBReader_constructor,0,properties,funcs,NULL,st_funcs);
}

@implementation JSPROXY_CCBReader

+(JSObject*) createJSObjectWithRealObject:(id)realObj context:(JSContext*)cx
{
	JSObject *jsobj = JS_NewObject(cx, JSPROXY_CCBReader_class, JSPROXY_CCBReader_object, NULL);
	JSPROXY_CCBReader *proxy = [[JSPROXY_CCBReader alloc] initWithJSObject:jsobj class:[CCBReader class]];
	[proxy setRealObj:realObj];

	if( realObj ) {
		objc_setAssociatedObject(realObj, &JSPROXY_association_proxy_key, proxy, OBJC_ASSOCIATION_RETAIN);
		[proxy release];
	}

	[self swizzleMethods];

	return jsobj;
}

@end
