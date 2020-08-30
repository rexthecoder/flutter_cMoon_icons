# flutter_cmoon_icons 🥳
![Untitled](https://user-images.githubusercontent.com/36260221/91662458-15eb5f00-ead2-11ea-9440-5d800ec1be87.png)

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
      // Use the CIcon Widget + IconMoon class for the IconData
      icon: CIcon(IconMoon.icon_whatsapp1,), 
      onPressed: () { print("Pressed"); }
     );
  }
}
```
## Example
![Screenshot_20200830-144816](https://user-images.githubusercontent.com/36260221/91662447-02d88f00-ead2-11ea-9446-fe79ef710842.png)
