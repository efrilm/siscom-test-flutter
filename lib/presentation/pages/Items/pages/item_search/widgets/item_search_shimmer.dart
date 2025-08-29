import 'package:flutter/material.dart';

import '../../../../../../common/theme/theme.dart';
import '../../../../../components/shimmer/shimmer.dart';

class ItemSearchShimmer extends StatelessWidget {
  const ItemSearchShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [item(), item(), item(), item(), item()]);
  }

  Widget item() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColor.borderSecondary)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerWidget(height: 14, width: 120, radius: 4),
              SizedBox(height: 4),
              ShimmerWidget(height: 12, width: 80, radius: 4),
              SizedBox(height: 4),
              ShimmerWidget(height: 12, width: 80, radius: 4),
            ],
          ),
          Column(
            children: [
              ShimmerWidget(height: 12, width: 60, radius: 4),
              SizedBox(height: 4),
              ShimmerWidget(height: 14, width: 100, radius: 4),
            ],
          ),
        ],
      ),
    );
  }
}
