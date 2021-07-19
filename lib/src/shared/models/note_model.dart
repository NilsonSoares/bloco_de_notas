import 'package:flutter/cupertino.dart';

class NoteModel {
  String noteTitle;
  String noteDescription;
  DateTime? noteDate;
  Color? noteColor;
  bool? isFavorite = false;
  bool? hasAttachmement = false;

  NoteModel({
    required this.noteTitle,
    required this.noteDescription,
    required this.noteDate,
    required this.noteColor,
    required this.isFavorite,
  });
}
