import 'package:algogence_education/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'animation_assets.dart';
import 'constants.dart';
SplashAnimation() {
  return Lottie.asset(
    AnimationAssets.splashLogo,
    repeat: true,
    width: 400,
    height: 400,
    fit: BoxFit.contain,
  );
}

SplashAppName() {
  return const Text(
    Constants.app_name,
    style: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
    ),
  );
}

SplashAppFullName() {
  return const Text(
    Constants.app_full_name,
    style: TextStyle(
        fontSize: 18
    ),
  );
}

Loader() {
  return SizedBox(
    width: 24,
    height: 24,
    child: CircularProgressIndicator(
      strokeWidth: 2,
    ),
  );
}

Space24(){
  return SizedBox(
    width: 24,
    height: 24,
  );
}

Widget TextFieldType1(
    BuildContext context,
    String hintText,
    String labelText,
    Function(String) onChange
    ) {
  return TextField(
    decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.Gray, width: 1.0),
        ),
        hintText: hintText,
        labelText: labelText
    ),
    onChanged: onChange,
  );
}

BoxDecorationType1(BuildContext context) {
  return BoxDecoration(
    color: Theme.of(context).colorScheme.surface,
    border: Border.all(color: AppColors.Gray),
    borderRadius: BorderRadius.circular(8),
  );
}

HeaderType1(
    BuildContext context,
    String text
    ) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.secondary
    ),
  );
}

SpaceY24() {
  return SizedBox(
    height: 24,
  );
}

SpaceY12() {
  return SizedBox(
    height: 12,
  );
}

SpaceX12() {
  return SizedBox(
    width: 12,
  );
}

enum ButtonState{
  NORMAL,
  LOADING
}
ButtonType1(
    BuildContext context,
    String label,
    Function() onPressed,
    {
      bool enabled = true,
      ButtonState state = ButtonState.NORMAL,
    }
    ) {
  Widget loader = Container();
  if(state==ButtonState.LOADING){
    loader = SizedBox(
      child: CircularProgressIndicator(
        color: enabled ? Theme.of(context).colorScheme.primary : AppColors.Gray,
        strokeWidth: 2,
      ),
      width: 24,
      height: 24,
    );
  }
  return Container(
    width: double.infinity,
    height: 48,
    child: OutlinedButton(
        onPressed: enabled ? onPressed : null,
        child: Row(
          mainAxisSize : MainAxisSize.min,
          children: [
            loader,
            SpaceX12(),
            Text(
              label,
              style: TextStyle(
                  fontSize: 18
              ),
            ),
          ],
        )
    ),
  );
}