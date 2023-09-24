import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:tangotok/features/authentications/views/signUp_screen.dart';
import 'package:tangotok/features/feeds/views/feeds_screen.dart';

final routerProvider = Provider((ref) {
  return GoRouter(
    initialLocation: FeedsScreen.routeName,
    redirect: (context, state) {
      final isLoggedIn = ref.read(authRepo).isLoggedIn;
    },
    routes: [
      GoRoute(path: FeedsScreen.routeName),
      GoRoute(path: SignUpScreen.routeName),
    ],
  );
});
