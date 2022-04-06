import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'note.g.dart';

@immutable
@HiveType(typeId: 0)
class Note {
  const Note({
    this.heading,
    this.content,
    this.dateTime,
  });

  @HiveField(0)
  final String? heading;

  @HiveField(1)
  final DateTime? dateTime;

  @HiveField(2)
  final String? content;
}
