import 'package:flutter_test/flutter_test.dart';

import 'package:shared_preferences_windows/shared_preferences_windows.dart';

void main() {
  test('adds one to input values', () {
    final obj = SharedPreferencesWindows();
    obj.getAll();
    /*final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
    expect(() => calculator.addOne(null), throwsNoSuchMethodError);
    */
  });
}