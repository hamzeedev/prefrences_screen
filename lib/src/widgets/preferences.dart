import 'package:flutter/material.dart';

export 'checks_pref.dart';
export 'options_pref.dart';
export 'switch_pref.dart';
export 'textfield_pref.dart';
export 'package:flutter_data_prefs/src/utils/pref_value.dart';

abstract class Preferences<T> extends StatefulWidget {
  final String title;
  final String prefKey;

  const Preferences({
    super.key,
    required this.title,
    required this.prefKey,
  });

  @override
  State<Preferences<T>> createState();
}
