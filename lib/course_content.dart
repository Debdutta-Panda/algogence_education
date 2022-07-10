import 'package:algogence_education/view_models/course_content_view_model.dart';
import 'package:flutter/cupertino.dart';

CourseContentViewModel vm = CourseContentViewModel();

class CourseContent extends StatefulWidget {
  const CourseContent(this.content, {Key? key}) : super(key: key);
  final Map<String, dynamic>? content;

  @override
  State<CourseContent> createState() => _CourseContentState();
}

class _CourseContentState extends State<CourseContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 300,
        right: 300,
      ),
      child: ListView(
        children: [
          SizedBox(
            height: 200,
          ),
          Text(
            widget.content?['name'],
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              widget.content?['description'],
            style: TextStyle(
                fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    vm.onInit(widget.content);
  }
}
