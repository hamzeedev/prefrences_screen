Here’s a basic `README.md` for your **flutter_stores** package on pub.dev:

---

# flutter_stores

A Flutter package for easily storing and updating user preferences. It simplifies key-value management and provides customizable preference widgets like switches and text fields to integrate into your Flutter apps.

## Features

- **Store Preferences:** Save user preferences using key-value pairs.
- **Widgets for Preferences:** Use pre-built widgets like switches and text fields for preference management.
- **Customizable UI:** Easily integrate into your app layout with `PreferencesLayout`.

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_stores: latest_version
```

Then run `flutter pub get` in your terminal.

## Usage

### Basic Setup

```dart
import 'package:flutter/material.dart';
import 'package:flutter_stores/flutter_stores.dart';

class PrefsScreen extends StatelessWidget {
  const PrefsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: const PreferencesLayout(
        preferences: [
          SwitchPref(title: "Hamza", prefKey: "test"),
          SwitchPref(title: "LastSeen", prefKey: "last_seen"),
          TextfieldPref(
            title: "Name",
            prefKey: "key",
            dialogTitle: "Enter your name",
            dialogHint: "Full name",
          ),
          TextfieldPref(
            title: "Email",
            prefKey: "email",
            dialogTitle: "Enter your email",
            dialogHint: "User Email",
          ),
        ],
      ),
    );
  }
}
```

### Example of a Custom Layout

You can easily customize the layout using the `PreferencesLayout`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_stores/flutter_stores.dart';

class CustomPreferencesScreen extends StatelessWidget {
  const CustomPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PreferencesLayout(
        preferences: [
          SwitchPref(title: "Enable Feature", prefKey: "enable_feature"),
          TextfieldPref(
            title: "Username",
            prefKey: "username",
            dialogTitle: "Enter Username",
            dialogHint: "Your username",
          ),
        ],
      ),
    );
  }
}
```

## Widgets

### `PreferencesLayout`
This widget arranges the preferences in a column layout.

### `SwitchPref`
A widget for a preference that can be toggled on/off.

### `TextfieldPref`
A widget for a text field preference where users can input data.

## Contributions

Contributions are welcome! Feel free to submit a pull request or report issues on the GitHub repository.

## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

This basic structure can be customized and expanded as you refine your package.