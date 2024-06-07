import 'package:flutter/material.dart';
import 'package:flutter_grocery/model/history_model.dart';
import 'package:flutter_grocery/widget/CAppBarTitle.dart';
import 'package:flutter_grocery/widget/history_item.dart';

import '../../strings.dart';

class HistoryScreen extends StatelessWidget {
  static String routeName = '/history';

  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBarTitle(title: AppString.lblOrderHistory,),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return HistoryItem(
                item: HistoryItemModel.historyList[index],
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: HistoryItemModel.historyList.length),
      ),
    );
  }
}
