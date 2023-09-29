import 'package:flutter/material.dart';

class MySetting extends StatefulWidget {
  const MySetting({super.key});

  @override
  State<MySetting> createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.only(top: 10,right: 10,bottom: 10,left: 10),
        child: Center(
          child: Text("Welcome to setting page"),
        ),
      ),
    );

  }
}
