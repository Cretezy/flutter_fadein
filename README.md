# Flutter Fade-In

Simple Flutter widget to fade-in your widgets once they are mounted.

Supports Material & Cupertino widgets.

## Install

Add this as a dependency in your `pubspec.yaml`:

```yaml
dependencies:
  flutter_fadein: ^1.0.0
```

## Usage

```dart
FadeIn(
  child: Text("This will be faded-in!"),
  // Optional paramaters
  duration: Duration(milliseconds: 250),
  curve: Curves.easeIn,
)
```
