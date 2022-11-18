import 'package:flutter/cupertino.dart';

///Example of this in dart
///Firebase
/// FirebaseAuth.instance.signInAnonymously()

class SingletonExample {
  static final SingletonExample _instance = SingletonExample._internal();

  static SingletonExample get instance => _instance;

  SingletonExample._internal();

  void someMethod() {
    debugPrint("SingletonExample->someMethod");
  }
}

class MySingleton {
  /// private constructor
  MySingleton._();

  /// the one and only instance of this singleton
  static final instance = MySingleton._();
}
