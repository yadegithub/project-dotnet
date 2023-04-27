import 'package:flutter/material.dart';
import 'package:project_pfe/page/edit_profile_page.dart';
import 'package:provider/provider.dart';
import 'package:project_pfe/main.dart';
import 'package:project_pfe/page/page/profile_widget.dart';
import 'package:project_pfe/provider/theme_provider.dart';
import 'package:project_pfe/widget_user_profil/change_theme_button_widget.dart';

import '../../models/user.dart';
import '../../utils/user_preferences.dart';
import '../../widget_user_profil/button_widget.dart';
import '../../widget_user_profil/numbers_widget.dart';
import 'navigationbar_widget.dart';

class HomePages extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) => Scaffold(
  //       appBar: AppBar(
  //         iconTheme: Theme.of(context).iconTheme,
  //         backgroundColor: Colors.transparent,
  //         leading: Icon(Icons.menu),
  //         title: Text(MyApp.title),
  //         elevation: 0,
  //         actions: [
  //           ChangeThemeButtonWidget(),
  //         ],
  //       ),
  //       body: ProfileWidget(),
  //       extendBody: true,
  //       bottomNavigationBar: NavigationBarWidget(),
  //     );

  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';
      final user = UserPreferences.myUser;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        //title: Text(MyApp.title),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
     body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
             
              const SizedBox(height: 24),
              buildName(user),
              const SizedBox(height: 24),
              Center(child: buildUpgradeButton()),
              const SizedBox(height: 24),
              NumbersWidget(),
              const SizedBox(height: 48),
              buildAbout(user),
            ],
          ),
    );
  }
  
  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
