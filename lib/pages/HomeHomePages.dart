import 'package:algogence_education/image_assets.dart';
import 'package:algogence_education/widgets.dart';
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
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: ListView(
        children: [
          SpaceY100(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ImageAssets.algogenceLogo),
              SpaceX12(),
              Text(
                  "Education",
                style: TextStyle(
                  fontSize: 80
                ),
              )
            ],
          ),
          SpaceY100(),
          SvgPicture.asset(ImageAssets.homeBanner),
          SpaceY100(),
        ],
      ),
    );
  }
}
