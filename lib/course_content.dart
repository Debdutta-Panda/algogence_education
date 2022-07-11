import 'package:algogence_education/image_content.dart';
import 'package:algogence_education/theme.dart';
import 'package:algogence_education/view_models/course_content_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          SizedBox(
            height: 20,
          ),
          ImageContent(widget.content?['banner']),
          SizedBox(
            height: 20,
          ),
          Text(
              "Author: ${widget.content?['author']}",
            style: TextStyle(
              fontSize: 24,
              decoration: TextDecoration.underline,
              color: AppColors.AzureRadiance
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                  "Created: ",
                style: TextStyle(
                  fontSize: 18
                ),
              ),
              Text(
                  widget.content?['created'],
                style: TextStyle(
                    fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "Last updated: ",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              Text(
                widget.content?['updated'],
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.content?['brief'],
            style: TextStyle(
              fontSize: 24,
              height: 2
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(),
          Text(
              "Prerequisities",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ...Prerequisities(widget.content?['prerquisities'])
        ],
      ),
    );
  }

  @override
  void initState() {
    vm.onInit(widget.content);
  }

  Prerequisities(List<dynamic> items) {
    var count = items.length;
    if(count==0){
      return [Text("This course need not any prerequisities")];
    }
    else{
      return (items.map((e) => Prerequisit(e))).toList();
    }
  }

  Prerequisit(item) {
    if(item is Map<String,dynamic>){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blueAccent,
                  width: 2
                ),
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0) //                 <--- border radius here
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  item['title']??"",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
              item['details']??"",
            style: TextStyle(
              fontSize: 24
            ),
          )
        ],
      );
    }
    else{
      return Container();
    }
  }
}
