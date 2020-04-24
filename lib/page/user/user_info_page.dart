import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _userName = "Logos";
    return Scaffold(
      body: Center(
        child: Text("Name" + _userName),
      ),
    );
  }
}
