

import 'package:app_settings/app_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_pfe/login_screens/login_screen.dart';
import 'package:project_pfe/themes.dart';
import 'package:project_pfe/utils/user_preferences.dart';
import 'package:project_pfe/widget_user_profil/change_theme_button_widget.dart';

AppBar buildAppBar(BuildContext context) {
 // final isDarkMode = Theme.of(context).brightness == Brightness.dark;
 // final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
     ChangeThemeButtonWidget(),
     IconButton(
      onPressed: (){
        AppSettings.openDeviceSettings();
      },
       icon: Icon(Icons.settings,)
       )
     
    ],
  );
}
