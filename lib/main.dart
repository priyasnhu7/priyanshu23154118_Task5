import 'package:flutter/material.dart';
import 'package:coffee_shop_ui/models/coffee.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF9F9F9),
        textTheme: GoogleFonts.soraTextTheme(),
      ),
      home: const OnboardPage(),
      routes: {
        '/dashboard': (context) => const DashboardPage(),
        '/detail': (context) {
          Coffee coffee = ModalRoute.of(context)!.settings.arguments as Coffee;
          return DetailPage(coffee: coffee);
        },
      },
    );
  }
}