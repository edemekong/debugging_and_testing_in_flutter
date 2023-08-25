import 'package:flutter/material.dart';
import 'package:kevshop/screens/home/home_view.dart';
import 'package:kevshop/states/cart_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const KevShopApp());
}

class KevShopApp extends StatelessWidget {
  const KevShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartState(),
      child: MaterialApp(
        theme: ThemeData.light(useMaterial3: true),
        home: const HomeView(),
      ),
    );
  }
}
