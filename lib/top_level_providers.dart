import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final databaseFutureProvider = FutureProvider(
  (ref) => Hive.openLazyBox('notes'),
);
