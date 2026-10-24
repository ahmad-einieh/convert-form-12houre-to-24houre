# Time Format Conversion Snippet

A Dart learning snippet that converts a hardcoded **24-hour** time to a **12-hour** time with an AM/PM suffix. The repository name suggests the reverse direction, but the checked-in code performs 24-hour → 12-hour conversion.

For the current input `23:43`, the resulting `time` variable becomes `11:43 PM`.

## Source

[`main.dart`](main.dart) parses the hour, chooses AM or PM, subtracts 12 for hours after noon, and maps midnight (`00`) to `12`. Minutes are preserved from the input string.

## Using the snippet

This file is not a runnable Dart program as committed: its statements are at top level, there is no `main()` entry point, and it does not print a result. To experiment, copy the snippet into a `void main() { ... }` function and add `print(time);` after it, then run that adapted file with Dart.

Use Dart with null-safety support. No Flutter UI or third-party packages are involved.

## Limitations

Input is hardcoded and must have a two-digit hour in an `HH:mm`-style string. Hour/minute ranges and malformed input are not validated. The snippet does not convert an AM/PM input back to 24-hour time.
