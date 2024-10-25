import 'package:flutter/material.dart';
import '../../flutter_data_prefs.dart';
import '../utils/helper.dart';

class PrefCheckBoxList extends Preferences<List<bool>> {
  const PrefCheckBoxList({
    super.key,
    required super.title,
    required super.prefKey,
    required this.items,
    this.defaultValues,
  });

  final List<String> items;
  final List<bool>? defaultValues;

  @override
  State<Preferences<List<bool>>> createState() => _DynamicCheckBoxListState();
}

class _DynamicCheckBoxListState extends State<PrefCheckBoxList> {
  late List<bool> userValues;

  @override
  void initState() {
    super.initState();
    userValues = List.generate(
      widget.items.length,
      (index) => PreferencesHelper.getValue(
        '${widget.prefKey}_$index',
        widget.defaultValues?[index] ?? false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          for (int i = 0; i < widget.items.length; i++)
            CheckboxListTile(
              title: Text(widget.items[i]),
              value: userValues[i],
              onChanged: (bool? value) {
                setState(() {
                  userValues[i] = value ?? false;
                  PreferencesHelper.saveValue(
                      '${widget.prefKey}_$i', userValues[i]);
                });
              },
            ),
        ],
      ),
    );
  }
}
