import 'package:books/navigation_second.dart';
import 'package:flutter/material.dart';

class NavigationFirts extends StatefulWidget {
  const NavigationFirts({super.key});

  @override
  State<NavigationFirts> createState() => _NavigationFirtsState();
}

class _NavigationFirtsState extends State<NavigationFirts> {
  Color color = Colors.blue.shade700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _navigateAndGetColor(context);
          },
          child: const Text('Change Color')
        ),
      ),
    );
  }
  Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NavigationSecond()),
    ) ?? Colors.blue;
    setState(() {});
  }
}