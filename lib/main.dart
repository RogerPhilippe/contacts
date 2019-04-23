import 'package:flutter/material.dart';
import 'helpers/Constants.dart';
import 'LoginPage.dart';

void main() => runApp(ContactsApp());

class ContactsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: new ThemeData(
        primaryColor: appDarkGreyColor,
      ),
      home: LoginPage()
    );
  }

}