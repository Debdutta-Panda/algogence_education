import 'package:algogence_education/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class HomeHomePage extends StatefulWidget {
  const HomeHomePage({Key? key}) : super(key: key);

  @override
  State<HomeHomePage> createState() => _HomeHomePageState();
}

class _HomeHomePageState extends State<HomeHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FractionallySizedBox(
              child: SvgPicture.asset(ImageAssets.algogenceLogo),
            )
          ],
        ),

      ],
    );
  }
}
