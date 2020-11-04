import 'ALib.dart' as plus show Calc hide Useless;
import 'BLib.dart' deferred as multiple; // lazy load
import 'Lib.dart' as lib;

main(List<String> args) {
  var plus_c = new plus.Calc();
  //var multp_c = new multiple.Calc();

  //lazy load: deferred
  doMultiply();
}

// lazy load
void doMultiply() async {
  await multiple.loadLibrary();
  multiple.Calc.readMe();
  var multiply_c = new multiple.Calc();
  print(multiply_c.multiplyNum(2));
}
