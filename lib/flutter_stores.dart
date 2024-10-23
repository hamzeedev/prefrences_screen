library flutter_stores;

import 'package:flutter/material.dart';
import 'package:flutter_stores/flutter_stores.dart';
export 'package:flutter_stores/src/widgets/preferences.dart';

class PreferencesLayout extends StatelessWidget {
  
  final List<Preferences> preferences;

   const PreferencesLayout({
     super.key,
     required this.preferences,
   });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: preferences,
    );
  }
}