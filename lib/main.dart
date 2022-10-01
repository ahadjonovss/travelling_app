import 'package:flutter/material.dart';
import 'package:travelling/pages/main_page.dart';
import 'package:travelling/pages/sign_in.dart';
import 'package:travelling/pages/test.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

@override
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Travelling',
          theme: ThemeData.light(),
          home: SignIn(),
        );
      },
    );
  }
}
