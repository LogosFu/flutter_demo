import 'package:flutter/material.dart';
import 'package:flutterdemo/bean/belle_info_entity.dart';

class BelleItem extends StatelessWidget {
  BelleInfoData _belleInfoData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  _belleInfoData.desc,
                  style: TextStyle(fontSize: 15),
                ),
                Image.network(_belleInfoData.url),
              ],
            ),
          )),
    );
  }

  BelleItem(this._belleInfoData);
}
