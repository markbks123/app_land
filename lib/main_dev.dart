import 'package:app_land/app.dart';
import 'package:app_land/services/app_constants.dart';
import 'package:app_land/setup_env.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupEnvironment(AppEnvironment.develop);
  runApp(App());
}
