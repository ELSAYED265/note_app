import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'add_note_form.dart';
import 'color_list_view.dart';
import 'custom_buttom.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formkey = GlobalKey();
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(
            hintText: "Title",
            onsave: (val) {
              title = val;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: "content",
            MaxLine: 5,
            onsave: (val) {
              subTitle = val;
            },
          ),
          SizedBox(height: 32),
          ColorListView(),
          SizedBox(height: 32),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButtom(
                isloaded: state is AddnoteLoaded ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: subTitle!,
                      date: DateFormat('dd MMMM yyyy').format(DateTime.now()),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel!);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

// DateFormat('dd MMMM yyyy').format(DateTime.now())
// DateTime.now().toString()
