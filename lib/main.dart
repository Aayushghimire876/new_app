import 'package:flutter/material.dart';
import 'package:new_app/main_nav_page.dart';
import 'package:new_app/provider/Auth/Login_page.dart';
import 'package:new_app/provider/Auth/register_page.dart';
import 'package:new_app/provider/Navigation_provider.dart';
import 'package:new_app/provider/cart_provider.dart';
import 'package:new_app/provider/favorite_provider.dart';
import 'package:new_app/provider/form_provider.dart';
import 'package:new_app/provider/grocery_list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(create: (_) => GroceryListProvider()),
        ChangeNotifierProvider(create: (_) => FormProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
//hello

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'NotoSans',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
