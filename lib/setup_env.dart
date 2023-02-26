import 'package:app_land/main.dart';
import 'package:app_land/services/app_constants.dart';

Future<void> setupEnvironment(AppEnvironment appEnvironment) async {
  MyApp.appEnvironment = appEnvironment;

  // await SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
}
