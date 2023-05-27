import 'package:flutter/material.dart';
import 'package:sweet_smash_app/pages/home_page.dart';
import 'package:sweet_smash_app/pages/login_page.dart';
import 'package:sweet_smash_app/pages/register_page.dart';
import 'package:sweet_smash_app/services/shared_service.dart';

Widget _defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool isLoggedIn = await SharedService.isLoggedIn();

  if (isLoggedIn) {
    _defaultHome = const HomePage();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sweet Smash',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => _defaultHome,
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
