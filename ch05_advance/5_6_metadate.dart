main(List<String> args) {
  // @override, @deprecated, @proxy
  getCurrentTime();
  getCurrentTime2();
}

@deprecated
// please using new DateTime.now() instead
int getCurrentTime() {
  return DateTime.january;
}

@Deprecated('please using new DateTime.now() instead')
int getCurrentTime2() {
  return DateTime.january;
}
