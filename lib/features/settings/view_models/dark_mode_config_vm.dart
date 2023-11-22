import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tangotok/features/settings/models/dark_mode_config_model.dart';
import 'package:tangotok/features/settings/repo/dark_mode_config_repo.dart';

class DarkModeConfigViewModel extends Notifier<DarkModeConfigModel> {
  final DarkModeConfigRepository _repository;

  DarkModeConfigViewModel(this._repository);

  void setDarkMode(bool value) {
    _repository.setDarkMode(value);
    state = DarkModeConfigModel(darkMode: value);
  }

  @override
  DarkModeConfigModel build() {
    return DarkModeConfigModel(
      darkMode: _repository.isDarkMode(),
    );
  }
}

final darkModeConfigProvider =
    NotifierProvider<DarkModeConfigViewModel, DarkModeConfigModel>(
  () => throw UnimplementedError(),
);
