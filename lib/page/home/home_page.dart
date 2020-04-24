import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/bean/android_info_entity.dart';
import 'package:flutterdemo/common/page_state.dart';
import 'package:flutterdemo/network/network.dart';
import 'package:flutterdemo/page/user/user_info_page.dart';
import 'package:flutterdemo/wiget/error_page.dart';
import 'package:flutterdemo/wiget/loading_page.dart';
import 'package:flutterdemo/wiget/reload_handler.dart';

import 'item_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements ReloadHandler {
  PageState _pageState = PageState.SUCCESS;
  List<AndroidInfoData> _dataList = [];

  @override
  void initState() {
    super.initState();
    _loading();
  }

  @override
  Widget build(BuildContext context) {
    Widget displayWidget = LoadingPage();
    switch (_pageState) {
      case PageState.LOADING:
        displayWidget = LoadingPage();
        break;
      case PageState.SUCCESS:
        displayWidget = Container(
          child: ListView.builder(
              itemCount: _dataList.length,
              itemBuilder: (context, index) {
                var itemData = _dataList[index];
                return ItemView(itemData);
              }),
        );
        break;
      case PageState.ERROR:
        displayWidget = ErrorPage(this);
        break;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Logos App"),
        ),
        body: displayWidget,
        floatingActionButton: FloatingActionButton(
          onPressed: this._jumpToUserInfo,
          child: Icon(Icons.supervised_user_circle),
        ));
  }

  void _loading() {
    setState(() {
      _pageState = PageState.LOADING;
    });

    Network.getDataList()
        .then((data) => this._setData(data))
        .catchError((e) => this._getDataError(e));
  }

  void _setData(data) {
    setState(() {
      _pageState = PageState.SUCCESS;
      _dataList = data;
    });
  }

  _getDataError(e) {
    print(e);
    setState(() {
      _pageState = PageState.ERROR;
    });
  }

  @override
  void onReload() {
    this._loading();
  }

  _jumpToUserInfo() {
    Navigator.pushNamed(context, "user_page");
//    Navigator.push(
//        context,
//        new MaterialPageRoute(
//            builder: (context) {
//              return new UserInfo();
//            },
//            fullscreenDialog: true));
  }
}
