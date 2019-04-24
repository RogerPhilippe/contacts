import 'package:contacts/HomePage.dart';
import 'package:flutter/material.dart';
import 'helpers/Constants.dart';
import 'LoginPage.dart';

void main() => runApp(ContactsApp());

class ContactsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final routes = <String, WidgetBuilder> {
      loginPageTag: (context) => LoginPage(),
      homePageTag: (context) => HomePage(),
    };

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: new ThemeData(
        primaryColor: appDarkGreyColor,
      ),
      home: LoginPage(),
        routes: routes
    );
  }

}