import 'package:flutter/material.dart';
import 'package:flutter_getx_master/views/auth/signin/signin_page.dart';
import 'package:flutter_getx_master/views/home/index_page.dart';
import 'package:flutter_getx_master/views/home/todo/todo_page.dart';
import 'package:get/get.dart';

import 'views/splash_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashPage()),
        GetPage(name: '/auth/signin', page: () => SigninPage()),
        GetPage(name: '/auth/signup', page: () => SigninPage()),
        GetPage(name: '/home', page: () => IndexPage()),
        GetPage(name: '/home/todo', page: () => TodoPage()),
      ],
    );
  }
}
