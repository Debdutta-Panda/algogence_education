import 'package:algogence_education/view_models/course_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../course_content.dart';
import '../models/data_state.dart';

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
      body: Observer(
        builder: (_) => ContentStateWidget(vm.contentState),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    vm.onInit(widget.id);
  }
  ContentStateWidget(DataState contentState){
    switch(contentState){
      case DataState.LOADING:
        return Center(
          child: CircularProgressIndicator(),
        );
        break;
      case DataState.SUCCESS:
        return CourseContent(vm.content);
        break;
      case DataState.FAILED:
        return Center(
          child: ElevatedButton(
            onPressed: (){

            },
            child: Text("Retry"),
          ),
        );
        break;
      case DataState.NORMAL:
        return Container();
        break;
    }
  }
}





/*Observer(
  builder: (_) => Text(""),
)*/
