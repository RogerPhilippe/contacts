import 'package:flutter/material.dart';
import 'helpers/Constants.dart';

class LoginPage extends StatelessWidget {

  final _pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // Avatar image
    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: bigRadius,
      child: appLogo,
    );

    // Pin edit text
    final pinCode = TextFormField(
      controller: _pinCodeController,
      keyboardType: TextInputType.phone,
        maxLength: 4,
      maxLines: 1,
      autofocus: true,
      decoration: InputDecoration(
        hintText: pinCodeHintText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        hintStyle: TextStyle(
          color: Colors.white
        )
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );

    // Login button
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: appGreyColor,
        child: Text(
          loginButtonText,
          style: TextStyle(
            color: Colors.white
          )
        ),
      ),
    );

    // Build screen
    return Scaffold(
      backgroundColor: appDarkGreyColor,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: bigRadius),
            pinCode,
            SizedBox(height: buttonHeight),
            loginButton
          ],
        ),
      ),
    );

  }

}
