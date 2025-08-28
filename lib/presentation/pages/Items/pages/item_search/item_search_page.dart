import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../common/theme/theme.dart';
import '../../../../components/field/field.dart';
import 'widgets/item_search_card.dart';

@RoutePage()
class ItemSearchPage extends StatelessWidget {
  const ItemSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppSearchFormField(),
        titleSpacing: 0,
        actions: [SizedBox(width: 8)],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '10 Data cocok',
                  style: AppStyle.sm.copyWith(color: AppColor.textSecondary),
                ),
              ],
            ),
          ),
          ItemSearchCard(),
          ItemSearchCard(),
          ItemSearchCard(),
          ItemSearchCard(),
          ItemSearchCard(),
          buildPullToRefreshInfo(),
        ],
      ),
    );
  }

  Padding buildPullToRefreshInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.refresh, size: 16, color: AppColor.info),
          SizedBox(width: 4),
          Text(
            'Refresh untuk melihat data lainnya',
            style: AppStyle.sm.copyWith(color: AppColor.info),
          ),
        ],
      ),
    );
  }
}
