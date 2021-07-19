import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteModel {
  String noteTitle;
  String noteDescription;
  DateTime? noteDate;
  Color? noteColor;
  bool? isFavorite = false;
  bool? hasAttachment = false;

  NoteModel({
    required this.noteTitle,
    required this.noteDescription,
    required this.noteDate,
    required this.noteColor,
    required this.isFavorite,
  });

  static getNotes() {
    return [
      NoteModel(
        noteTitle: 'Não esquecer',
        noteDescription: 'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.',
        noteDate: DateTime.now(),
        noteColor: AppColors.rosa,
        isFavorite: false),
        NoteModel(
        noteTitle: 'Reunião com os stakeholders',
        noteDescription: 'Ipsum dolor sit amet, consectur. Adipiscing elit, sed do eiusmod tempor incidi. Sed do eiusmod tempor incidi. Ut labore et dolore magna aliqua.',
        noteDate: DateTime.now(),
        noteColor: AppColors.verde,
        isFavorite: null),
        NoteModel(
        noteTitle: 'Lembretes para o médico',
        noteDescription: 'Lorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit, sed do eiusmod tempor incidi. Ut labore dolore.',
        noteDate: DateTime.now(),
        noteColor: AppColors.roxo,
        isFavorite: true),
        NoteModel(
        noteTitle: 'Ideias para o novo app 2022',
        noteDescription:  'Ipsum dolor sit amet, consectur. Adipiscing elit, sed do eiusmod tempor incidi. Ut labore dolore.',
        noteDate: null,
        noteColor: AppColors.ciano,
        isFavorite: null),
        NoteModel(
        noteTitle: 'Reunião do grupo de treinamento',
        noteDescription:  'Ipsum dolor sit amet, consectur. Adipiscing elit, sed do eiusmod tempor incidi. Ut labore dolore.',
        noteDate: DateTime.now(),
        noteColor: AppColors.amarelo,
        isFavorite: null),
    ];
  }

}
