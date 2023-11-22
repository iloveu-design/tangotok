import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tangotok/features/authentications/repos/authentication_repo.dart';
import 'package:tangotok/features/feeds/views/feeds_screen.dart';
import 'package:tangotok/features/users/view_models/users_view_model.dart';
import 'package:tangotok/utils.dart';

class SignUpViewModel extends AsyncNotifier<void> {
  late final AuthenticationRepository _authRepo;

  @override
  FutureOr<void> build() {
    _authRepo = ref.read(authRepo);
  }

  Future<void> signUp(BuildContext context) async {
    state = AsyncValue.loading();
    final form = ref.read(singUpForm);
    final users = ref.read(usersProvider.notifier);

    state = await AsyncValue.guard(
      () async {
        final userCreadential = await _authRepo.emailSignUp(
          form["email"],
          form["password"],
        );

        await users.createProfile(userCreadential);
      },
    );

    if (state.hasError) {
      showFirebaseErrorSnack(context, state.error);
    } else {
      context.go(FeedsScreen.routeName);
    }
  }
}

final singUpForm = StateProvider((ref) => {});

final singUpProvider = AsyncNotifierProvider<SignUpViewModel, void>(
  () => SignUpViewModel(),
);
