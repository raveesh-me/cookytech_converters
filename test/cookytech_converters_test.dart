import 'package:flutter_test/flutter_test.dart';
import 'package:cookytech_converters/cookytech_converters.dart';

enum TestEnum { anda, murgi }

void main() {
  group("EnumConverter should convert to and back between enum and string", () {
    // setup
    EnumConverter<TestEnum> testEnumConverter = EnumConverter<TestEnum>();
    test("toJson(TestEnum.anda) should return 'anda'", () {
      expect(testEnumConverter.toJson(TestEnum.anda), equals("anda"));
    });
  });
}
