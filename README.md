# Atomic Flutter Package

Atomic Flutter Package is a design system package for Flutter applications, organized according to Atomic Design principles. It provides a structured hierarchy of UI components that are modular, reusable, and easy to integrate into your Flutter projects.

## Getting started

### Installation

Add atomic_flutter_package to your pubspec.yaml file:

```yaml
dependencies:
  atomic_flutter_package: ^1.0.0
```

Then, 


```zsh
run flutter pub get
```

## Usage

### Atoms

Atoms are the basic building blocks of the design system.

Example:
```dart
import 'package:atomic_flutter_package/atoms/skeleton_widget.dart';

SkeletonWidget(
  height: 100,
  width: 100,
);

```

### Molecules

Molecules are relatively simple groups of UI elements functioning together as a unit.

Example:
```dart
import 'package:atomic_flutter_package/molecules/detail_card.dart';

DetailCard(
  cardData: CardModel(
      id: 1,
      title: 'Title test',
      image: 'assets/molecule.png',
      subtitle: 'Subtitle test'),
);
```

### Organisms

Organisms are relatively complex UI components composed of groups of molecules and/or atoms.

Example:
```dart
import 'package:atomic_flutter_package/organisms/login_form.dart';

LoginForm(
  usernameController: TextEditingController(),
  passwordController: TextEditingController(),
  onLogin: () => print('Login button pressed'),
);
```

### Templates

Templates are page-level objects that place components into a layout and articulate the design’s underlying content structure.

Example:
```dart
import 'package:atomic_flutter_package/templates/login_template.dart';

LoginTemplate(
  usernameController: TextEditingController(),
  passwordController: TextEditingController(),
  onLogin: () => print('Login button pressed'),
);
```


### Pages

Pages are specific instances of templates that populate the layout with real content.

Example:
```dart
import 'package:atomic_flutter_package/pages/login_page.dart';

LoginPage(
  handleLogin: () => print('Login button pressed'),
  usernameController: TextEditingController(),
  passwordController: TextEditingController(),
);
```

## Documentation
- For more detailed examples and documentation, check out the [GitHub repository](https://github.com/sharfe25/atomic_flutter_package).

## Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License
This package is licensed under the MIT License. See the [LICENSE] (https://choosealicense.com/licenses/mit/) file for more details.