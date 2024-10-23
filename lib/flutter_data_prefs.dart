library flutter_data_prefs;

import 'package:flutter/material.dart';
import 'package:flutter_data_prefs/flutter_data_prefs.dart';
export 'package:flutter_data_prefs/src/widgets/preferences.dart';

class PreferencesLayout extends StatelessWidget {
  final List<Preferences> preferences;

  const PreferencesLayout({
    super.key,
    required this.preferences,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: preferences,
    );
  }
}

