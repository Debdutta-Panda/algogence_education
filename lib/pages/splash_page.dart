import 'package:algogence_education/widgets.dart';
import 'package:flutter/material.dart';

import '../view_models/splash_view_model.dart';

final vm = SplashViewModel();

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                SplashAnimation(),
                SplashAppName(),
                Space24(),
                Loader()
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    vm.onInit();
  }
}




