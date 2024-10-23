import 'package:flutter/material.dart';
import '../../flutter_stores.dart';

class OptionsPref<T> extends Preferences<T> {
  const OptionsPref({super.key, required super.title, required super.prefKey});

  @override
  State<Preferences<T>> createState() => _OptionsPrefState();
}

class _OptionsPrefState<T> extends State<OptionsPref<T>> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
