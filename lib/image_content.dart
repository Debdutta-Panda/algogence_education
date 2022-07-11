import 'package:algogence_education/models/data_state.dart';
import 'package:algogence_education/view_models/image_content_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ImageContent extends StatefulWidget {
  const ImageContent(this.content, {Key? key}) : super(key: key);
  final String content;
  @override
  State<ImageContent> createState() => _ImageContentState();
}

class _ImageContentState extends State<ImageContent> {
  ImageContentViewModel vm = ImageContentViewModel();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ContentWidget(vm.contentState),
    );
  }

  @override
  void initState() {
    super.initState();
    vm.onInit(widget.content);
  }

  Widget ContentWidget(DataState contentState) {
    switch(contentState){
      case DataState.LOADING:
        return Center(
          child: CircularProgressIndicator(),
        );
      case DataState.SUCCESS:
        return Image.network(vm.url);
      case DataState.FAILED:
        return Center(
          child: TextButton(
            child: Text("Retry"),
            onPressed: (){
              vm.onInit(widget.content);
            },
          ),
        );
      case DataState.NORMAL:
        return Container();
    }
  }
}
