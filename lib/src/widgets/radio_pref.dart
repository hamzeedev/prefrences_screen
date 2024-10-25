import 'package:flutter/material.dart';
import '../../flutter_data_prefs.dart';
import '../utils/helper.dart';

class PrefRadioList extends Preferences<String> {
  const PrefRadioList({
    super.key,
    required super.title,
    required super.prefKey,
    required this.items,
    this.defaultValue,
  });

  final List<String> items;
  final String? defaultValue;

  @override
  State<Preferences<String>> createState() => _DynamicRadioListState();
}

class _DynamicRadioListState extends State<PrefRadioList> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue =
        PreferencesHelper.getValue(widget.prefKey, widget.defaultValue ?? '');
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
          for (String item in widget.items)
            RadioListTile<String>(
              title: Text(item),
              value: item,
              groupValue: selectedValue,
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    selectedValue = value;
                    PreferencesHelper.saveValue(widget.prefKey, selectedValue);
                  });
                }
              },
            ),
        ],
      ),
    );
  }
}
