import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> setupHive() async {
  await Hive.initFlutter();
}