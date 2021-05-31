import 'package:flutter/material.dart';

import 'ui/screen/subscription_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green[500]),
      home: SubscriptionScreen(),
    );
  }
}