import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:river_router/constants/constants.dart';

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
          children: [
            const Text("Home Screen"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: () {
                /// -> /productDetail/id
                GoRouter.of(context).push("/productDetail/2000");
              },
              icon: const Icon(Icons.next_plan),
              label: const Text("Product Detail"),
            ),
          ],
        ),
      ),
    );
  }
}
