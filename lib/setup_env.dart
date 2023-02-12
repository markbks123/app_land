import 'package:app_land/services/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';

Future<void> setupEnvironment(AppEnvironment appEnvironment) async {
  App.appEnvironment = appEnvironment;

  // await SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
}
