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
        title: const Text("Navigation Second Screen Aido"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            ElevatedButton(
                child: const Text("Pink"),
                onPressed: () {
                  color = Colors.pink.shade700;
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
                child: const Text("Purple"),
                onPressed: () {
                  color = Colors.purple.shade700;
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
                child: const Text("Yellow"),
                onPressed: () {
                  color = Colors.yellow.shade700;
                  Navigator.pop(context, color);
                }),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
