import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    // Convert the string stored in JSON to a ThemeMode enum.
    final themeString = json['themeMode'] as String;
    switch (themeString) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    // Serialize the ThemeMode enum to a string.
    return {'themeMode': state.toString().split('.').last}; // Extract just 'dark', 'light', or 'system'
  }
}
