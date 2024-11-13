# Dart

Dart is usually used in conjunction with a full IDE and framework such as Flutter for writing applications.

However, there's nothing stopping you from developing CLI items directly in Dart it seems.

```sh
dart run hey.dart
dart run hey.dart Alix Bub
```

To compile

```sh
# Produces a `hey.exe` , incl on Linux
dart compile exe hey.dart

# or specify the output binary's name
dart compile exe hey.dart -o greet

# Then run `./greet Sam Jay` for example
```

