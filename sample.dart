import 'dart:io';

void main() {
  String? inputString = stdin.readLineSync()!; // Replace with your input string
  String transformedString = transformString(inputString);
  print(transformedString);
}

String transformString(String input) {
  if (input.isEmpty) {
    return input;
  }

  StringBuffer transformed = StringBuffer();
  for (int i = 0; i < input.length; i++) {
    if ((i + 1) % 3 == 0) {
      // Convert every third character to uppercase
      transformed.write(input[i].toUpperCase());
    } else {
      transformed.write(input[i]);
    }
  }
  return transformed.toString();
}
