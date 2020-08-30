# flutter_cMoon_icons 🥳
[!Flutter_Cmoon_icons](https://drive.google.com/file/d/1c7a9nX2jvsLwcD-Jaug3CJ-8q8chzXQ3/view?usp=sharing)

Insipred by Font awesome Icons package🤗. This package contains more than 2000 icons🥰.
The amazing thing about this icons is that, it comes with it own default Colors🙌🏽 but you can change it to your own choice🤩.No need to bother yourself searching for social media icon 😬 colors.

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
dependencies:
    flutter_cmoon_icons: <latest_version>
```

## Usage

```dart
import 'package:flutter_cmoon_icons/flutter_cmoon_icons.dart';
class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return IconButton(
      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
      icon: CIcon(IconMoon.icon_whatsapp1,), 
      onPressed: () { print("Pressed"); }
     );
  }
}
```