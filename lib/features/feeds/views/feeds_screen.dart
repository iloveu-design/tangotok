import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tangotok/screens/widgets/footer_tab_bar.dart';

class FeedsScreen extends ConsumerWidget {
  static const routeName = "/feeds";
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feed"),
      ),
      body: Container(),
      bottomNavigationBar: FooterTabBar(),
    );
  }
}
