import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  color = Colors.red.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text('red')),
            ElevatedButton(
                onPressed: () {
                  color = Colors.green.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text('green')),
            ElevatedButton(
                onPressed: () {
                  color = Colors.blue.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text('Blue')),
          ],
        ),
      ),
    );
  }
}