import 'package:flutter/material.dart';

class PersistentTabBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      child: TabBar(
        indicatorColor: Theme.of(context).tabBarTheme.indicatorColor,
        tabs: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Threads"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Replies"),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 200;

  @override
  // TODO: implement minExtent
  double get minExtent => 200;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
