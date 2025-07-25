import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;
  NoteModel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
  });
}

//انا بعمل حاجه اسمها file adaptor
//يعني ايه خلي بالك hive بيقبل داتا من النوع immutableيعني int,string.......مش object
