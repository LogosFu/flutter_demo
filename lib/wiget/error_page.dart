import 'package:flutter/material.dart';
import 'package:flutterdemo/wiget/reload_handler.dart';

class ErrorPage extends StatelessWidget {
  ReloadHandler _reloadHandler;

  ErrorPage(this._reloadHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.error,
              color: Colors.red,
              size: 30,
            ),
            onPressed: () {
              _reloadHandler.onReload();
            },
          ),
          Text("Loging Error check u network"),
        ],
      ),
    );
  }
}
