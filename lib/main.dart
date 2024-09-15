import 'package:device_preview/device_preview.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:oxyshine/app.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:oxyshine/data/repositories/authentication/authentication_repository.dart';
import 'firebase_options.dart';

void main() async {
  /// --widget Bindings--
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// --Get storage--
  await GetStorage.init();

  /// --Await splash untill other items load--
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
    (FirebaseApp value)=>Get.put(AuthenticationRepository()),
  );

  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const MyApp(),
  ));
}
