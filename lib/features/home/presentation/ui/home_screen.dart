import 'package:flutter/material.dart';

class HomeFeatureScreen extends StatefulWidget {
  const HomeFeatureScreen({Key? key}) : super(key: key);

  @override
  State<HomeFeatureScreen> createState() => _HomeFeatureScreenState();
}

class _HomeFeatureScreenState extends State<HomeFeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Home Screen"),
          ],
        ),
      ),
    );
  }
}
