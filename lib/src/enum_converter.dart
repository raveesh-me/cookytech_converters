import 'package:json_annotation/json_annotation.dart';

abstract class EnumInterface<T> {
  List<EnumItemInterface> get values;
}

abstract class EnumItemInterface {
  int get index;
  String toString();
}

class EnumConverter<T> implements JsonConverter<T, String> {
  @override
  T fromJson(String json) {
    return (T as EnumInterface<T>)
        .values
        .firstWhere((element) => element.toString().endsWith(json)) as T;
  }

  @override
  String toJson(T json) {
    // just make sure there are no '.' s in the enum class name or this will fail.
    return (json as EnumItemInterface).toString().split('.')[1];
  }
}
