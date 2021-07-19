import 'package:bloco_de_notas/src/shared/constants/text_styles.dart';
import 'package:flutter/material.dart';

import 'package:bloco_de_notas/src/shared/models/note_model.dart';

import 'card_icon_widget.dart';

class CardNote extends StatelessWidget {
  const CardNote({
    Key? key,
    required this.note,
  }) : super(key: key);

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: note.noteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  boxShadow: kElevationToShadow[2],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    note.noteTitle,
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      letterSpacing: 0.15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (note.noteDate != null)
                      CardIcon(icon: Icons.date_range),
                    if (note.hasAttachment != null)
                      CardIcon(icon: Icons.attach_file_outlined),
                    if (note.isFavorite != null)
                      CardIcon(icon: Icons.favorite),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  note.noteTitle,
                  style: TextStyles.black14w400Roboto,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Criação: ${note.noteDate.toString()}',
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      letterSpacing: 0.15,
                      color: Color.fromRGBO(0, 0, 0, 0.54)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
