#include "node.h"
#include <raylib.h>

void InitWindowAdapter(const v8::FunctionCallbackInfo<v8::Value> &args) {
  InitWindow(800, 600, "Hello, from v8!");
}

void Initialize(v8::Local<v8::Object> exports) {
  NODE_SET_METHOD(exports, "InitWindow", InitWindowAdapter);
}

NODE_MODULE(NODE_GYP_MODULE_NAME, Initialize)
