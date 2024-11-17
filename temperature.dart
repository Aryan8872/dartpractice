import 'dart:io';

void main() {
  print("Temperature Converter");
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");
  
  stdout.write("Choose an option (1 or 2): ");
  String? choice = stdin.readLineSync();

  if (choice == '1') {
    double celsius = getTemperature("Enter temperature in Celsius: ");
    double fahrenheit = (celsius * 9 / 5) + 32;
    print("$celsius°C is equal to $fahrenheit°F");
  } else if (choice == '2') {
    double fahrenheit = getTemperature("Enter temperature in Fahrenheit: ");
    double celsius = (fahrenheit - 32) * 5 / 9;
    print("$fahrenheit°F is equal to $celsius°C");
  } else {
    print("Invalid option. Please run the program again and choose 1 or 2.");
  }
}

double getTemperature(String prompt) {
  stdout.write(prompt);
  return double.parse(stdin.readLineSync()!);
}
