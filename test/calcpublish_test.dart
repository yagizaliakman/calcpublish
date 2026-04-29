import 'package:flutter_test/flutter_test.dart';
import 'package:calcpublish/calcpublish.dart';

void main() {
  test('Toplama işlemi testi', () {
    expect(add(2, 3), 5);
  });

  test('Çıkarma işlemi testi', () {
    expect(subtract(10, 4), 6);
  });
}
