#include "raylib.h"
#include "node.h"

// TODO: only require() (commonjs) is supported currently, research on how to
// use how to use this with the ES Modules!!

void InitWindowAdapter(const v8::FunctionCallbackInfo<v8::Value> &args) {
  InitWindow(800, 600, "Hello, from v8!");
}

void Initialize(v8::Local<v8::Object> exports) {
  NODE_SET_METHOD(exports, "InitWindow", InitWindowAdapter);
}

NODE_MODULE(NODE_GYP_MODULE_NAME, Initialize)
