# dart_vscode
 Flutter Starter Sample Code
 ![Cover](img/book%20cover.png)

## 1. Intro Dart

final, const,
list, set, map,
basic data type,
UTF-16, UTF-32('\uXXXX', '\u{XXXXXX'}),
function,
operator,
flow control,
Exception, Error,
QA

## 2. Dart OOP

class, variable, get, set,
static, construct,
extends, abstract,
implements, Mixin(with),
enum

Generic：
class A\<T>,
class A\<T extends String>,
T function(T)

## 3. Dart Advance

imports [libname.dart] as [lib_a] show [class_name] hide [useless_class_name];
imports [libname.dart] deferred as [lib_b];
lazy load: deferred, async, await,

export 'lib1.dart';
export 'lib2.dart';

new Future.delayed(Duration(seconds: 2),
new Future.sync().then(),
await for loop stream list, _,

isolates, TypedefClass,
@override, @deprecated,@Deprecated(message), @proxy
