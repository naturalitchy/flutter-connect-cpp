import 'dart:ffi'; // For FFI
import 'dart:io'; // For Platform.isX
import 'package:flutter/services.dart';
import 'dart:async';

final DynamicLibrary nativeAddLib = Platform.isAndroid
    ? DynamicLibrary.open("libnative_add.so")
    : DynamicLibrary.process();

final int Function(int x, int y) nativeAdd =
nativeAddLib
    .lookup<NativeFunction<Int32 Function(Int32, Int32)>>("native_add")
    .asFunction();


class NativeAdd {

}
