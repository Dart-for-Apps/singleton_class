import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';
import 'package:singleton_class_annotation/singleton_class_annotation.dart';

class SingletonClassGenerator extends GeneratorForAnnotation<SingletonClass> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    final className = 'Singleton${element.name}';
    var singletonClass = '''
    class $className extends ${element.name}{
      static $className _instance;
      static $className getInstance() {
        if (_instance == null) {
          _instance = $className._();
        }
        return _instance;
      }
      factory $className() => getInstance();
      $className._();
    }
    ''';
    return singletonClass;
  }
}
