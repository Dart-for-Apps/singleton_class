import 'package:singleton_class_annotation/singleton_class_annotation.dart';

part 'main.g.dart';

@SingletonClass()
class TestClass {
  printer() {
    print(this.hashCode);
  }
}

main() {
  var instance = SingletonTestClass.getInstance();
  var instance2 = SingletonTestClass();

  instance.printer();
  instance2.printer();
}
