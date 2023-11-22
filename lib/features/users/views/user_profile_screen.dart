import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart';
import 'package:tangotok/features/settings/views/settings_screen.dart';
import 'package:tangotok/screens/widgets/footer_tab_bar.dart';
import 'package:tangotok/screens/widgets/persistant_tab_bar.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  static const routeName = "/profile_screen";
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    void _onGearPressed() {
      context.push(SettingsScreen.routeName);
    }

    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  actions: [
                    IconButton(
                      onPressed: _onGearPressed,
                      icon: FaIcon(FontAwesomeIcons.gear),
                    ),
                  ],
                ),
                SliverPersistentHeader(
                  delegate: PersistentTabBar(),
                ),
              ];
            },
            body: TabBarView(
              children: [
                Expanded(
                  child: ListView(
                    children: [],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FooterTabBar(),
    );
  }
}
