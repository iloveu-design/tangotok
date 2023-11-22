import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tangotok/features/authentications/repos/authentication_repo.dart';
import 'package:tangotok/features/authentications/views/signUp_screen.dart';
import 'package:tangotok/features/authentications/views/singIn_screen.dart';
import 'package:tangotok/features/feeds/views/feeds_screen.dart';
import 'package:tangotok/features/settings/views/settings_screen.dart';
import 'package:tangotok/features/users/views/user_profile_screen.dart';

final routerProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: FeedsScreen.routeName,
      redirect: (context, state) {
        final isLoggedIn = ref.read(authRepo).isLoggedIn;
        if (!isLoggedIn) {
          if (state.uri.toString() != SignInScreen.routeName) {
            return SignInScreen.routeName;
          }
        }
        return null;
      },
      routes: [
        GoRoute(
          path: FeedsScreen.routeName,
          builder: (context, state) => const FeedsScreen(),
        ),
        GoRoute(
          path: SignUpScreen.routeName,
          builder: (context, state) => const SignUpScreen(),
        ),
        GoRoute(
          path: SignInScreen.routeName,
          builder: (context, state) => const SignInScreen(),
        ),
        GoRoute(
          path: ProfileScreen.routeName,
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: SettingsScreen.routeName,
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    );
  },
);
