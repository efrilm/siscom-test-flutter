import 'package:injectable/injectable.dart';

abstract class Env {
  String get baseUrl;
  // add getter here...
}

@Injectable(as: Env)
@dev
class DevEnv implements Env {
  @override
  String get baseUrl => 'http://10.0.2.2:3000'; // example value
}

@Injectable(as: Env)
@prod
class ProdEnv implements Env {
  @override
  String get baseUrl => 'http://10.0.2.2:3000';
}
