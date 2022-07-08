import 'package:algogence_education/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        FractionallySizedBox(
          widthFactor: 0.7,
          child: Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.blueAccent),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                  child: Image.asset(ImageAssets.android_kotlin_banner),
                ),
                SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            "Android + Kotlin Master Course",
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Take this course if and only if you are really serious about your Android Application Development career or want to create some awesome app. You need to do hard work along with the course guidelines. Good thing come only by hard work and proper guidance.",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
