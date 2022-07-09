import 'package:algogence_education/view_models/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

import 'CoursesPage.dart';
import '../image_assets.dart';
import '../navigation.dart';
import '../routes.dart';
import 'HomeHomePages.dart';
import 'LoginSignupPage.dart';

var vm = HomeViewModel();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                      child: TextButton(
                          onPressed: (){
                            vm.onMenuSelected('home');
                          },
                          child: SvgPicture.asset(ImageAssets.appLogo)
                      )
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: (){
                        vm.onMenuSelected('home');
                      },
                      child:Observer(
                        builder: (_) =>  Text(
                          "Home",
                          style: TextStyle(
                            color: vm.currentMenu=='home' ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.primary
                          ),
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        vm.onMenuSelected('courses');
                      },
                      child: Observer(
                        builder: (_) =>  Text(
                          "Courses",
                            style: TextStyle(
                                color: vm.currentMenu=='courses' ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.primary
                            )
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        vm.onMenuSelected('login_signup');
                      },
                      child: Observer(
                        builder: (_) =>  Text(
                          "Login/Signup",
                            style: TextStyle(
                                color: vm.currentMenu=='login_signup' ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.primary
                            )
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
          Divider(),
          Expanded(
            child: Container(
              child: Center(
                child: Navigator(
                  key: Navigation.homeNav,
                  initialRoute: Routes.home_home,
                  onGenerateRoute: (RouteSettings settings){
                    Widget page;
                    switch(settings.name){
                      case Routes.home_courses:{
                        page = CoursesPage();
                        break;
                      }
                      case Routes.home_login_signup:{
                        page = LoginSignupPage();
                        break;
                      }
                      default:{
                        page = HomeHomePage();
                      }
                    }

                    return PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => page,
                      //transitionDuration: const Duration(seconds: 1),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        final fadeAnimation = animation.drive(Tween(begin: 0.0,end: 1.0));
                        return FadeTransition(
                          opacity:fadeAnimation ,
                          child: child,
                        );
                      },
                    );

                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
