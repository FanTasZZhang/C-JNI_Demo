#include <stdio.h>
#include <jni.h>
#include "HelloJni.h"

JNIEXPORT void Java_HelloJni_sayHello(JNIEnv * env, jobject obj){
  printf("hello from c file by JNI\n");
  return;
}
