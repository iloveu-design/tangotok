import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tangotok/features/messages/views/messages_screen.dart';
import 'package:tangotok/screens/widgets/footer_tab_bar.dart';

class FeedsScreen extends ConsumerWidget {
  static const routeName = "/feeds";
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void _onDmPressed() {
      context.push(MessagesScreen.routeName);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("TangoTok"),
        actions: [
          IconButton(
            onPressed: _onDmPressed,
            icon: FaIcon(FontAwesomeIcons.paperPlane),
          ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: FooterTabBar(),
    );
  }
}
