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
      // GetX에서 라우팅을 관리하기 위해 다음과 같이 작업함
      // 기존 routes와 동일하나, 파라미터 전달 등이 편리하고 URL 파싱이 가능함
      // TODO: 관련 예제는 추가 예정
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
