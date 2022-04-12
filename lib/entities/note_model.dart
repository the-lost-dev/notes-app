import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'note_model.g.dart';

@immutable
@HiveType(typeId: 0)
class NoteModel{
  const NoteModel({
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
