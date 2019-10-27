import 'package:build/build.dart';
import 'package:singleton_class_generator/singleton_class_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder singletonClassGenerator(BuilderOptions options) => SharedPartBuilder(
      [SingletonClassGenerator()],
      'singleton_class',
    );
