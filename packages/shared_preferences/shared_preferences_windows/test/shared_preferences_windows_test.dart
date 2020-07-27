import 'package:flutter_test/flutter_test.dart';

import 'package:shared_preferences_windows/shared_preferences_windows.dart';

void main() {
  test('adds one to input values', () {
    final obj = SharedPreferencesWindows.instance;
    obj.getAll();
    obj.setValue('String', 'key', 'testevalue');
    obj.getAll().then((rsp) {
      rsp.forEach((k, item) => print([k, item]));
    });
    /*final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
    expect(() => calculator.addOne(null), throwsNoSuchMethodError);
    */
  });
}
