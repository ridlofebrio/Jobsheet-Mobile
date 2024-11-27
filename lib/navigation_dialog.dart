import 'package:flutter/material.dart';

class NavigationDialog extends StatefulWidget {
  const NavigationDialog({super.key});

  @override
  State<NavigationDialog> createState() => _NavigationDialogState();
}

class _NavigationDialogState extends State<NavigationDialog> {
  Color color = Colors.blue.shade700;

  _showColorDialog(BuildContext context) async {
    await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return AlertDialog(
            title: const Text("Very important question"),
            content: const Text('Please choose a color'),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    color = Colors.red.shade700;
                    Navigator.pop(context, color);
                  },
                  child: Text('Red')),
              TextButton(
                  onPressed: () {
                    color = Colors.green.shade700;
                    Navigator.pop(context, color);
                  },
                  child: Text('green')),
              TextButton(
                  onPressed: () {
                    color = Colors.blue.shade700;
                    Navigator.pop(context, color);
                  },
                  child: Text('blue'))
            ],
          );
        });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print(color);
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showColorDialog(context);
            },
            child: const Text('Change Color')),
      ),
    );
  }
}
