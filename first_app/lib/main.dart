import 'package:first_app/currency_converter_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterPage());
  }
}

void main() {
  runApp(const MyApp());
}
