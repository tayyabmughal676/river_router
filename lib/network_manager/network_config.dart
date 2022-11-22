enum Env { dev, uat, prod }

class NetworkConfig {
  static var mode = Env.dev;

  final _dev = "https://dev";
  final _uat = "https://uat";
  final _prod = "https://prod";

  String getBaseUrl() {
    switch (mode) {
      case Env.dev:
        return _dev;
      case Env.uat:
        return _uat;
      case Env.prod:
        return _prod;
    }
  }
}
