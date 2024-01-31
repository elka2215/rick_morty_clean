import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_project_rick_morty/core/injections/injections.config.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<GetIt> configureDependencies(
    {String environment = Environment.dev}) async {
  return $initGetIt(locator, environment: environment);
}

class SPService {
  static late SharedPreferences _instance;

  static Future initialize() async {
    _instance = await SharedPreferences.getInstance();
  }

  static SharedPreferences get I => _instance;
}
