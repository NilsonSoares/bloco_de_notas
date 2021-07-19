import 'package:bloco_de_notas/src/features/new_note/new_note.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/text_styles.dart';
import 'package:bloco_de_notas/src/shared/models/note_model.dart';
import 'package:bloco_de_notas/src/shared/widgets/card_note_widget.dart';
import 'package:bloco_de_notas/src/shared/widgets/custom_fab_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class HomePageWithNotes extends StatefulWidget {
  const HomePageWithNotes({ Key? key }) : super(key: key);

  @override
  _HomePageWithNotesState createState() => _HomePageWithNotesState();
}

class _HomePageWithNotesState extends State<HomePageWithNotes> {

  final List<NoteModel> notes = NoteModel.getNotes();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.branco,
      appBar: AppBar(
        title: Image.asset("assets/images/journal_logo_white.png"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppColors.blueGradient
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 50.0,
                right: 50.0,
                top: 18.0,
                bottom: 16.5
               ),
               child: TextField(
                 decoration: InputDecoration(
                   hintText: "Pesquisar",
                   hintStyle: TextStyles.black16w400Roboto,
                   suffixIcon: IconButton(
                     onPressed: (){},
                     icon:Icon(Icons.search),
                  ),
                 ),
               ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemCount: notes.length,
                  itemBuilder: (BuildContext context, int index) => CardNote(
                    note: notes[index],
                  ),
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                ),
              )
            )
          ], 
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFAB(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>NewNotePage()));
        },
      )
    );
  }
}