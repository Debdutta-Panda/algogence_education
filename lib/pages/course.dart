import 'package:algogence_education/view_models/course_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CourseViewModel vm = CourseViewModel();

class CoursePage extends StatefulWidget {
  const CoursePage(this.id, {Key? key}) : super(key: key);
  final String id;
  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.id),
        leading: InkWell(
          onTap: (){
            vm.goBack();
          },
          child: Icon(
              Icons.arrow_back
          ),
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
      ),
    );
  }
}
