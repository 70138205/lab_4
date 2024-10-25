import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(60)),
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );

    return Scaffold(
        backgroundColor: Color.fromARGB(213, 220, 240, 117),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "0",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Please enter the amount:",
                    hintStyle: TextStyle(color: Colors.blue),
                    prefixIcon: Icon(Icons.monetization_on),
                    filled: true,
                    fillColor: Colors.red,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('Pressed');
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(222, 63, 76, 160),
                  fixedSize: const Size(150, 50),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(color: Colors.black38),
                ),
              ),
            ],
          ),
        ));
  }
}
