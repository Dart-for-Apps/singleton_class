# singleton_class

Annotation package to create a singleton style class.
This package is for `@SingletonClass()` annotaion which indicates
that a class is a singleton.

# Usage

## Install

Add this lines in your `pubspec.yaml` and run `flutter pub get`.

```yaml
dependencies:
  singleton_class:

dev_dependencies:
  build_runner:
  singleton_class_generator:
```

## Example

```dart
import 'package:singleton_class/singleton_class.dart';

part 'main.g.dart'; /// singleton_class_generator will automatically generate this.

/// All the class annotated as a `@SingletonClass()` will have
/// a singleton class which has a `Singleton`-prefixed name.
@SingletonClass()
class TestClass {
  printer() {
    print(this.hashCode);
  }
}

main() {
    /// `Singleton`-prefixed singleton style `TestClass`.
    /// All the other method or members inside `TestClass` works as expected.
    /// You can get a singleton instance using `getInstance()` method
    /// or default constructor.
    /// Current version supports non-args constructor only.
  var instance = SingletonTestClass.getInstance();
  var instance2 = SingletonTestClass();

  instance.printer();
  instance2.printer();
}
```

Run `build_runner`.

```bash
flutter pub run build_runner watch
```
