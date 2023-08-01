import 'package:flutter/material.dart';
import 'package:crypto_list/routes/routes.dart';

import 'theme/theme.dart';

void main() {
  runApp(const CryptoListApp());
}

class CryptoListApp extends StatelessWidget {
  const CryptoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto List ',
      theme: darkTheme,
      routes: routes,
    );
  }
}
