import 'package:flutter/material.dart';
import 'package:flutterdemo/bean/android_info_entity.dart';

class ItemView extends StatelessWidget {
  AndroidInfoData _itemData;

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
                  _itemData.desc,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  _itemData.url,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  _itemData.author,
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          )),
    );
  }

  ItemView(this._itemData);
}
