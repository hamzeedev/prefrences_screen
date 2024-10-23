import 'package:flutter/material.dart';
import 'package:flutter_stores/flutter_stores.dart';
import 'package:flutter_stores/src/utils/helper.dart';
import 'package:flutter_stores/src/widgets/preferences.dart';

class TextfieldPref<T> extends Preferences<T> {
  const TextfieldPref({
    super.key,
    required super.title,
    required super.prefKey,
    this.emptySummary = "Click here to set",
    this.dialogTitle = "Update values",
    this.dialogHint = "",
  });

  final String emptySummary;
  final String dialogTitle;
  final String dialogHint;

  @override
  State<Preferences<T>> createState() => _TextfieldPrefState<T>();
}

class _TextfieldPrefState<T> extends State<TextfieldPref<T>> {
  String? oldValue;

  @override
  Widget build(BuildContext context) {
    oldValue = PreferencesHelper.instance.read<String>(widget.prefKey);
    var controller = TextEditingController(text: oldValue);

    return ListTile(
      title: Text(widget.title),
      subtitle: Text(oldValue ?? widget.emptySummary),
      onTap: () {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text(widget.dialogTitle),
                  content: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: widget.dialogTitle,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Dismiss"),
                    ),
                    TextButton(
                      onPressed: () {
                        var newValue = controller.text;
                        PreferencesHelper.saveValue(widget.prefKey, newValue);
                        Navigator.pop(context);
                        setState(() {});
                      },
                      child: Text(oldValue == null ? "Set" : "Update"),
                    ),
                  ],
                ));
      },
    );
  }
}
