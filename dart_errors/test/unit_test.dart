import 'package:test/test.dart';

import '../bin/perimeters_of_shapes.dart';

void main() {
  test('calculate the perimeter of a square', () {
    expect(squarePerimeter(4), 16);
  });
}
