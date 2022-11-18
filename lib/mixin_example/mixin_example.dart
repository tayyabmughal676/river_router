import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;

class Brand {
  void getBrand({required String carBrand}) {
    debugPrint("Brand name : $carBrand");
  }
}

class Model {
  void getModel({required String carModel}) {
    debugPrint("Model : $carModel");
  }
}

class Car extends Brand with Model {
  void getCarDetails({required String carBrand, required String carModel}) {
    if (foundation.kDebugMode) {
      debugPrint("Hey, here is my car details");
    }
    getBrand(carBrand: carBrand);
    getModel(carModel: carModel);
  }
}
